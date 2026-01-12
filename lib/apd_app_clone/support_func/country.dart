import 'dart:convert';
import 'package:http/http.dart' as http;

class CountryService {
  Future<List<String>> fetchDialCodes() async {
    final response = await http.get(Uri.parse("https://countriesnow.space/api/v0.1/countries/codes"),);
    if (response.statusCode == 200){
      final data = json.decode(response.body);
      final List countries = data["data"];
      return countries.map<String>((country) {
        return country["dial_code"] ?? "";
      }).toList();
    } else {
      throw Exception("Failed to load country codes");
    }
  }
}
