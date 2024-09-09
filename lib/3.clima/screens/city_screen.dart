import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CityScreen extends StatelessWidget {
  CityScreen({super.key});

  String? cityName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (value) {
                  cityName = value;
                },
                style: const TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none),
                    icon: const Icon(Icons.location_searching)),
              ),
              SizedBox(
                height: 50.0,
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.pop(context,cityName);
                },
                child: Text(
                  'Get Weather',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
