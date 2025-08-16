import 'package:car_rental_app/data/models/review_model.dart';
import 'package:flutter/material.dart';

class CustomerReviewsSection extends StatelessWidget {
  final List<Review> reviews;

  const CustomerReviewsSection({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Customer Reviews",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        ...reviews.map((review) => ReviewCard(review: review)).toList(),
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  final Review review;

  const ReviewCard({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Profile Row
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(review.profileImage),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    review.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    review.timeAgo,
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),

          /// Rating Stars
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                index < review.rating ? Icons.star : Icons.star_border,
                color: Colors.black,
                size: 18,
              ),
            ),
          ),
          const SizedBox(height: 6),

          /// Comment
          Text(
            review.comment,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 8),

          /// Likes and Dislikes
          Row(
            children: [
              Icon(Icons.thumb_up_alt_outlined, size: 18, color: Colors.grey[700]),
              const SizedBox(width: 4),
              Text("${review.likes}"),
              const SizedBox(width: 16),
              Icon(Icons.thumb_down_alt_outlined, size: 18, color: Colors.grey[700]),
              const SizedBox(width: 4),
              Text("${review.dislikes}"),
            ],
          ),
        ],
      ),
    );
  }
}
