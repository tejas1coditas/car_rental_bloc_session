import 'package:car_rental_app/constants/constants.dart';
import 'package:car_rental_app/data/models/last_minute_deals_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LastMinuteDeals extends StatelessWidget {
  LastMinuteDeals({super.key});
  final LastMinuteDealsModel lastMinuteDealsModel = LastMinuteDealsModel(
    image: AssetConstants.popularLocationImage,
    title: 'Weekend Gateway',
    description: 'Save 20% on rentals of 3+ days',
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lastMinuteDealsModel.title,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              lastMinuteDealsModel.description,
              style: GoogleFonts.plusJakartaSans(
                color: tealColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            lastMinuteDealsModel.image,
            width: 130,
            height: 64,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
