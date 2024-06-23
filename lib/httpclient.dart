import 'dart:convert';
import 'dart:io';

Future<String> fetchData(Uri url) async {
  var client = HttpClient();
  try {
    final request = await client.getUrl(url);
    final response = await request.close();

    final stringData = await response.transform(utf8.decoder).join();
    return stringData;
  } finally {
    client.close();
  }
}
