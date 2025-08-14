import 'package:car_rental_app/data/models/popular_locations_entity.dart';
import 'package:car_rental_app/widgets/popular_location_card.dart';
import 'package:flutter/material.dart';

class PopularLocationsList extends StatelessWidget {
  const PopularLocationsList({super.key, required this.popularLocations});

  final List<PopularLocationsEntity> popularLocations;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: popularLocations.length,
        separatorBuilder: (context, index) => SizedBox(width: 16),
        itemBuilder: (context, index) => PopularLocationCard(
          popularLocationsEntity: popularLocations[index],
        ),
      ),
    );
  }
}
