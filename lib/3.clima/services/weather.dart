import 'package:angela_yu/3.clima/services/network.dart';

class WeatherModel {
  getWeatherIcon(int id) {
    if (id < 500) {
      return '🥶';
    } else {
      return '🥵';
    }
  }

  // Future <dynamic>getWeatherCity(String city) async{
  //   NetworkHelper networkHelper=NetworkHelper(
  //       url: 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=b2c8d65184a739a7c45a444b0abbbf73&units=metric');
  //   var weatherData=await networkHelper.getWeather();
  //   return weatherData;
  // }
  Future getWeatherCity(String city) async {
    NetworkHelper networkHelper = NetworkHelper(
        url: 'https://api.openweathermap.org/data'
            '/2.5/weather?q=$city&appid=b2c8d65184a739a7c45a444b0abbbf73&units=metric');
    var weatherData = await networkHelper.getWeather();
    return weatherData;
  }
}
