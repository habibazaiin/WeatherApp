import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:my_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:my_app/models/weather_model.dart';
import 'package:my_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
  getWeather({required String cityName}) async {
    try {
      weatherModel = await WeatherService(
        dio: Dio(),
      ).getWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel: weatherModel!));
    } on Exception catch (e) {
      emit(WeatherFailureState());
    }
  }
}
