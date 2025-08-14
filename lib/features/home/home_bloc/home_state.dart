part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final List<PopularLocationsEntity> popularLocations;
  final List<PopularLocationsEntity> rentalCategories;

  HomeLoadedState({
    required this.popularLocations,
    required this.rentalCategories,
  });
}

class HomeFailureState extends HomeState {}
