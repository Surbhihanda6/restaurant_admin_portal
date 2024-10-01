import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkLayer {
  NetworkLayer._();

  static Future post(String url, dynamic body) async {
    http.Response res = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(body),
    );
    return jsonDecode(res.body.toString());
  }

  static get(String url) async {
    http.Response res = await http.get(Uri.parse(url));
    return jsonDecode(res.body.toString());
  }
}
