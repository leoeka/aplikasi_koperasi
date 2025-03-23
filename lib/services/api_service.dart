import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://fakerryugan.my.id/api";

  // Fungsi Login
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
      print("Login Berhasil: ${response.body}");
      return jsonDecode(response.body);
    } else {
      print("Login Gagal: ${response.body}");
      return null;
    }
  }
}
