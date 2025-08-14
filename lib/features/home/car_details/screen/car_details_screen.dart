import 'package:car_rental_app/features/home/car_details/bloc/car_details_bloc.dart';
import 'package:car_rental_app/features/home/car_details/bloc/car_details_event.dart';
import 'package:car_rental_app/features/home/car_details/bloc/car_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarDetailsBloc()..add(FetchCarDetailsEvent()),
      child: Scaffold(
        body: BlocBuilder<CarDetailsBloc, CarDetailsState>(
          builder: (context, state) {
            if (state is LoadedCarDetailsState) {
              final carDetails = state.carDetails;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(carDetails.carImage),
                    Text('About this car'),
                    Text(carDetails.aboutCar.make),
                    Text(carDetails.aboutCar.model),
                    Text(carDetails.aboutCar.year),
                  ],
                ),
              );
            }
            if (state is ErrorCarDetailsState) {
              return Center(child: Text('Error'));
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
