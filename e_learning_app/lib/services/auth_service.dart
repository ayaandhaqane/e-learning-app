import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  // ✅ Use your actual backend base URL
static const String baseUrl = 'http://10.0.2.2:5000/api/auth';

  static Future<http.Response> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );
    return response;
  }

  static Future<http.Response> register(
      String username, String email, String phone, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': username,
        'email': email,
        'phone': phone,
        'password': password,
      }),
    );
    return response;
  }
}
