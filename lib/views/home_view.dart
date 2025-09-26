import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:my_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:my_app/main.dart';
import 'package:my_app/views/search_view.dart';
import 'package:my_app/widgets/no_weather_body.dart';
import 'package:my_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SearchView();
                  },
                ),
              );
            },
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoadingState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is WeatherSuccessState) {
            return WeatherInfoBody();
          } else if (state is WeatherFailureState) {
            return Center(
              child: Text('something went wrong, please try again'),
            );
          } else {
            return NoWeatherBody();
          }
        },
      ),
    );
  }
}
