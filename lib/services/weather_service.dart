import 'package:dio/dio.dart';
import 'package:my_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'b686906b98a348afa5b123839251308';

  WeatherService({required this.dio});
  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
      );

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage =
          e.response?.data['error']['message'] ??
          'Oops there was an error, try later';
      throw Exception(errMessage);
    } catch (e) {
      throw Exception('Oops there was an error, try later');
    }
  }
}
