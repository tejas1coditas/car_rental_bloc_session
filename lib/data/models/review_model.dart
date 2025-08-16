import 'package:car_rental_app/constants/constants.dart';

class Review {
  final String name;
  final String timeAgo;
  final String profileImage;
  final int rating;
  final String comment;
  final int likes;
  final int dislikes;

  Review({
    required this.name,
    required this.timeAgo,
    required this.profileImage,
    required this.rating,
    required this.comment,
    required this.likes,
    required this.dislikes,
  });

   List<Review> reviews = [
    Review(
      name: "Sophia",
      timeAgo: "1 month ago",
      profileImage: AssetConstants.manAvatar,
      rating: 5,
      comment:
          "Great experience! The car was clean and the service was excellent.",
      likes: 12,
      dislikes: 2,
    ),
    Review(
      name: "Ethan",
      timeAgo: "2 months ago",
      profileImage: AssetConstants.womenAvatar,
      rating: 4,
      comment: "Good value for money. The car was reliable.",
      likes: 8,
      dislikes: 1,
    ),
  ];
}
