import 'package:car_rental_app/data/models/review_model.dart';
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
      await Future.delayed(Duration(seconds: 1));

      // loaded
      emit(
        HomeLoadedState(
          popularLocations: popularLocations,
          rentalCategories: rentalCategories,
          reviews: reviews
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


