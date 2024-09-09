import 'package:angela_yu/3.clima/screens/city_screen.dart';
import 'package:angela_yu/3.clima/services/weather.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  final weatherData;

  const LocationScreen({super.key, this.weatherData});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weatherModel = WeatherModel();

  int? temp;
  String? country;
  String? name;
  String? main;
  String? iconWeather;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUi(weatherData: widget.weatherData);
  }

  void updateUi({required final weatherData}) {
    setState(() {
      if (weatherData == null) {
        this.temp = 0;
        country = '';
        name = '';
        iconWeather = '';
        main = '';
        return;
      }
      double temp = weatherData['main']['temp'];
      this.temp = temp.toInt();
      country = weatherData['sys']['country'];
      name = weatherData['name'];
      main = weatherData['weather'][0]['main'];
      iconWeather =
          weatherModel.getWeatherIcon(weatherData['weather'][0]['id']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://img.freepik.c'
                      'om/free-photo/view-3d-cloud_23-2151113470.jp'
                      'g?t=st=1724683657~exp=1724687257~hmac=37189ad89e8345b2243'
                      'f19cbfda682a58a22eb295aa5f1ae690971acc7d34ce8&w=360'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: () async {
                            // var cityName = await Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => CityScreen(),
                            //     ));
                            // print(cityName);
                            // if(cityName!=null){
                            //   var weatherData=await weatherModel.getWeatherCity(cityName);
                            //   updateUi(weatherData: weatherData);
                            // }
                          String cityName= await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CityScreen(),
                                ));
                         var weatherData= await weatherModel.getWeatherCity(cityName);
                         updateUi(weatherData: weatherData);
                          },
                          icon: Icon(
                            Icons.location_searching,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
                Text(
                  '$iconWeather',
                  style: const TextStyle(fontSize: 100.0),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$temp',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 100.0),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      'C',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                  ],
                ),
                Text(
                  '$country ( $name )',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Text(
                  '$main',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
