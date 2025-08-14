import 'package:car_rental_app/data/models/car_details_mode.dart';

sealed class CarDetailsState {}

class LoadingCarDetailsState extends CarDetailsState {}

class LoadedCarDetailsState extends CarDetailsState {
  final CarDetailsModel carDetails;

  LoadedCarDetailsState({required this.carDetails});

}

class ErrorCarDetailsState extends CarDetailsState {}
