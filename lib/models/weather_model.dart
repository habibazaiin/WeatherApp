class WeatherModel {
  final String cityName;
  final String image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String condition;
  final DateTime date;
  WeatherModel({
    required this.cityName,
    required this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.condition,
    required this.date,
  });
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      condition: json['forecast']['forecastday'][0]['day']['condition']['text'],
      date: DateTime.parse(json['current']['last_updated']),
    );
  }
}
