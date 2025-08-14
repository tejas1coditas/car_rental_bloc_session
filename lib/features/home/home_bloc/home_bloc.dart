import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_rental_app/constants/constants.dart';
import 'package:car_rental_app/data/models/popular_locations_entity.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeLoadingState()) {
    on<FetchDataEvent>((event, emit) async {
      // loader
      await Future.delayed(Duration(seconds: 3));

      // loaded
      emit(
        HomeLoadedState(
          popularLocations: popularLocations,
          rentalCategories: rentalCategories,
        ),
      );
    });
  }
}

final List<PopularLocationsEntity> popularLocations = [
  PopularLocationsEntity(
    imagePath: AssetConstants.popularLocationImage,
    title: 'New York',
    subtitle: 'From \$50/day',
  ),
  PopularLocationsEntity(
    imagePath: AssetConstants.popularLocationImage,
    title: 'New York',
    subtitle: 'From \$50/day',
  ),
  PopularLocationsEntity(
    imagePath: AssetConstants.popularLocationImage,
    title: 'New York',
    subtitle: 'From \$50/day',
  ),
  PopularLocationsEntity(
    imagePath: AssetConstants.popularLocationImage,
    title: 'New York',
    subtitle: 'From \$50/day',
  ),
];

final List<PopularLocationsEntity> rentalCategories = [
  PopularLocationsEntity(
    imagePath: AssetConstants.popularLocationImage,
    title: 'SUV',
    subtitle: 'Arrive in style',
  ),
  PopularLocationsEntity(
    imagePath: AssetConstants.popularLocationImage,
    title: 'SUV',
    subtitle: 'Arrive in style',
  ),
  PopularLocationsEntity(
    imagePath: AssetConstants.popularLocationImage,
    title: 'SUV',
    subtitle: 'Arrive in style',
  ),
];
