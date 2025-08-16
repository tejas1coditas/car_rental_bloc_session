class CarDetailsModel {
  final String carImage;
  final AboutCarModel aboutCar;
  final FeaturesCarModel features;
  final String rentalTerm;

  CarDetailsModel({
    required this.carImage,
    required this.aboutCar,
    required this.features,
    required this.rentalTerm,
  });
}

class AboutCarModel {
  final String make;
  final String model;
  final String year;

  AboutCarModel({required this.make, required this.model, required this.year});
}

class FeaturesCarModel {
  final String featureOne;
  final String featureTwo;
  final String featureThree;
  final String featureFour;

  FeaturesCarModel({required this.featureOne, required this.featureTwo, required this.featureThree, required this.featureFour});
}
