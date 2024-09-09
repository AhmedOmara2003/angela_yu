// import 'dart:convert';
// import 'package:http/http.dart';
//
// class NetworkHelper {
//   String url;
//
//   NetworkHelper({required this.url});
//
//   getData() async {
//     var url = Uri.parse(this.url);
//
//     Response response = await get(url);
//     if (response.statusCode == 200) {
//       var data = response.body;
//       print(data);
//       return jsonDecode(data);
//     } else {
//       print(response.statusCode);
//     }
//   }
// }
import 'dart:convert';
import 'package:http/http.dart';

class NetworkHelper {
  final String url;

  NetworkHelper({required this.url});

  Future getWeather() async {
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
