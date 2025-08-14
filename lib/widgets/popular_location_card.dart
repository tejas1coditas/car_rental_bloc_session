import 'package:car_rental_app/constants/constants.dart';
import 'package:car_rental_app/data/models/popular_locations_entity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularLocationCard extends StatelessWidget {
  final PopularLocationsEntity popularLocationsEntity;

  const PopularLocationCard({super.key, required this.popularLocationsEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              popularLocationsEntity.imagePath,
              width: double.infinity,
              height: 135,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text(
              popularLocationsEntity.title,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          Text(
            popularLocationsEntity.subtitle,
            style: GoogleFonts.plusJakartaSans(
              color: tealColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
