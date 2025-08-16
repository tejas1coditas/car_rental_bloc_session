import 'package:car_rental_app/constants/constants.dart';
import 'package:car_rental_app/data/models/car_details_mode.dart';
import 'package:car_rental_app/features/car_details/bloc/car_details_event.dart';
import 'package:car_rental_app/features/car_details/bloc/car_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarDetailsBloc extends Bloc<CarDetailsEvent, CarDetailsState> {
  CarDetailsBloc() : super(LoadingCarDetailsState()) {
    on<FetchCarDetailsEvent>((event, emit) async {
      await Future.delayed(Duration(seconds: 5));

      emit(LoadedCarDetailsState(carDetails: carDetailsModel));
    });
  }
}

final CarDetailsModel carDetailsModel = CarDetailsModel(
  carImage: AssetConstants.popularLocationImage,
  aboutCar: AboutCarModel(make: 'mercedes benz', model: 'E calss', year: '2021'),
  features: FeaturesCarModel(featureOne: 'Automatic Transmission', featureTwo: 'Leather Seats', 
  featureThree: 'Navigation System', featureFour: 'Premium Sound System'),
  rentalTerm: 'asdasdasdasdasdasdasdasdasdas',
);
