import 'dart:convert';
import "package:http/http.dart" as http;

class ApiService {
  static const String baseUrl = "https://fakerryugan.my.id/api";


  // Fungsi untuk login
  static Future<Map<String, dynamic>?> login(String email, String password) async {
    final url = Uri.parse("$baseUrl/login");
    final response = await http.post(
  url,
  headers: {
    "Content-Type": "application/json",
    "Accept": "application/json"
  },
  body: jsonEncode({"email": email, "password": password}),
);

    if (response.statusCode == 200) {
  return jsonDecode(response.body);
} else {
  print("Error: ${response.body}"); // Tambahkan untuk melihat error dari API
  return null;
}
  }
}
