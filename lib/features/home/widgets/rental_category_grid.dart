import 'package:car_rental_app/data/models/popular_locations_entity.dart';
import 'package:car_rental_app/features/home/car_details/screen/car_details_screen.dart';
import 'package:car_rental_app/widgets/popular_location_card.dart';
import 'package:flutter/material.dart';

class RentalCategoryGrid extends StatelessWidget {
  const RentalCategoryGrid({super.key, required this.rentalCategories});

  final List<PopularLocationsEntity> rentalCategories;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9,
        crossAxisSpacing: 16,
      ),
      itemCount: rentalCategories.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return CarDetailsScreen();
            }),
          );
        },
        child: PopularLocationCard(
          popularLocationsEntity: rentalCategories[index],
        ),
      ),
    );
  }
}
