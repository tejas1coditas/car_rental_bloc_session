part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final List<PopularLocationsEntity> popularLocations;
  final List<PopularLocationsEntity> rentalCategories;
  final List<Review> reviews;

  HomeLoadedState( {
    required this.popularLocations,
    required this.rentalCategories,
    required this.reviews,
  });
}

class HomeFailureState extends HomeState {}
