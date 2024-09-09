import 'dart:convert';
import 'package:angela_yu/3.clima/services/location.dart';
import 'package:angela_yu/3.clima/services/network.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation(context);
  }

  void getLocation(context) async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
    NetworkHelper networkHelper = NetworkHelper(
        url: 'https://api.openweathermap.org/data'
            '/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=b2c8d65184a739a7c45a444b0abbbf73&units=metric');
    var weatherData = await networkHelper.getWeather();

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LocationScreen(
                  weatherData: weatherData,
                )));
  }

  // void getLocation() async {
  //   Location location = Location();
  //   await location.getCurrentLocation();
  //   print(location.latitude);
  //   print(location.longitude);
  //
  //   NetworkHelper networkHelper = NetworkHelper(
  //       url:
  //           'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=b2c8d65184a739a7c45a444b0abbbf73');
  //   var weatherData=await networkHelper.getData();
  //   print(weatherData['name']);
  //   print(weatherData['coord']['lon']);
  //   print(weatherData['coord']['lat']);
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SpinKitCircle(
      color: Colors.grey,
    ));
  }
}
