import 'dart:convert';
import 'dart:io';

Future<String> fetchData(Uri url) async {
  var client = HttpClient();
  try {
    HttpClientRequest request = await client.getUrl(url);
    HttpClientResponse response = await request.close();

    final stringData = await response.transform(utf8.decoder).join();
    return stringData;
  } finally {
    client.close();
  }
}
