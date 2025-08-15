import 'package:flutter/material.dart';
import 'package:my_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:my_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:my_app/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: getColor(
                  BlocProvider.of<GetWeatherCubit>(
                    context,
                  ).weatherModel?.condition,
                ),
                appBarTheme: AppBarTheme(
                  backgroundColor: getColor(
                    BlocProvider.of<GetWeatherCubit>(
                      context,
                    ).weatherModel?.condition,
                  ),
                  titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),

              home: HomeView(),
            );
          },
        ),
      ),
    );
  }
}

MaterialColor getColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition.toLowerCase()) {
    case 'sunny':
      return Colors.amber;
    case 'partly cloudy':
      return Colors.lightBlue;
    case 'cloudy':
      return Colors.blueGrey;
    case 'overcast':
      return Colors.grey;
    case 'mist':
      return Colors.teal;
    case 'patchy rain possible':
      return Colors.indigo;
    case 'patchy snow possible':
      return Colors.lightBlue;
    case 'patchy sleet possible':
      return Colors.cyan;
    case 'patchy freezing drizzle possible':
      return Colors.lightBlue;
    case 'thundery outbreaks possible':
      return Colors.deepPurple;
    case 'blowing snow':
      return Colors.blue;
    case 'blizzard':
      return Colors.blue;
    case 'fog':
      return Colors.grey;
    case 'freezing fog':
      return Colors.blueGrey;
    case 'patchy light drizzle':
      return Colors.lightBlue;
    case 'light drizzle':
      return Colors.blue;
    case 'freezing drizzle':
      return Colors.lightBlue;
    case 'heavy freezing drizzle':
      return Colors.indigo;
    case 'patchy light rain':
      return Colors.lightBlue;
    case 'light rain':
      return Colors.blue;
    case 'moderate rain at times':
      return Colors.indigo;
    case 'moderate rain':
      return Colors.indigo;
    case 'heavy rain at times':
      return Colors.blue;
    case 'heavy rain':
      return Colors.blue;
    case 'light freezing rain':
      return Colors.blueGrey;
    case 'moderate or heavy freezing rain':
      return Colors.indigo;
    case 'light sleet':
      return Colors.cyan;
    case 'moderate or heavy sleet':
      return Colors.cyan;
    case 'patchy light snow':
      return Colors.lightBlue;
    case 'light snow':
      return Colors.lightBlue;
    case 'patchy moderate snow':
      return Colors.blue;
    case 'moderate snow':
      return Colors.blue;
    case 'patchy heavy snow':
      return Colors.blue;
    case 'heavy snow':
      return Colors.blueGrey;
    case 'ice pellets':
      return Colors.cyan;
    case 'light rain shower':
      return Colors.lightBlue;
    case 'moderate or heavy rain shower':
      return Colors.indigo;
    case 'torrential rain shower':
      return Colors.blue;
    case 'light sleet showers':
      return Colors.cyan;
    case 'moderate or heavy sleet showers':
      return Colors.cyan;
    case 'light snow showers':
      return Colors.lightBlue;
    case 'moderate or heavy snow showers':
      return Colors.blue;
    case 'light showers of ice pellets':
      return Colors.cyan;
    case 'moderate or heavy showers of ice pellets':
      return Colors.cyan;
    case 'patchy light rain with thunder':
      return Colors.deepPurple;
    case 'moderate or heavy rain with thunder':
      return Colors.deepPurple;
    case 'patchy light snow with thunder':
      return Colors.deepPurple;
    case 'moderate or heavy snow with thunder':
      return Colors.deepPurple;
    default:
      return Colors.blue; // default
  }
}
