import 'package:car_rental_app/constants/constants.dart';
import 'package:car_rental_app/data/models/review_model.dart';
import 'package:car_rental_app/features/home/home_bloc/home_bloc.dart';
import 'package:car_rental_app/features/home/widgets/customer_review_section.dart';
import 'package:car_rental_app/features/home/widgets/last_minute_deals.dart';
import 'package:car_rental_app/features/home/widgets/rental_category_grid.dart';
import 'package:car_rental_app/widgets/bottom_bar.dart';
import 'package:car_rental_app/widgets/search_container.dart';
import 'package:car_rental_app/widgets/popular_locations_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Rentals',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoadedState) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SearchContainer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 24),
                      child: titleText('Popular Locations'),
                    ),

                    PopularLocationsList(
                      popularLocations: state.popularLocations,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 24),
                      child: titleText('Rental Categories'),
                    ),

                    RentalCategoryGrid(
                      rentalCategories: state.rentalCategories,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 24),
                      child: titleText('Last Minute Deals'),
                    ),

                    LastMinuteDeals(),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 24),
                      child: titleText('Customer Reviews'),
                    ),

                    CustomerReviewsSection(reviews: state.reviews),
                  ],
                ),
              ),
            );
          }
          return Center(child: Text('data'));
        },
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
