class CarDetailsModel {
  final String carImage;
  final AboutCarModel aboutCar;
  final List<String> features;
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
