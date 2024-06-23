import 'dart:convert';
import 'dart:io';

class Speedtest {
  final Uri serverSourceURL;
  final Uri clientConfigURL;

  String? server;

  Speedtest({
    required this.serverSourceURL,
    required this.clientConfigURL,
  });

  void fetchServers() async {
    var client = HttpClient();
    try {
      HttpClientRequest request = await client.getUrl(serverSourceURL);
      HttpClientResponse response = await request.close();

      final stringData = await response.transform(utf8.decoder).join();
      print(stringData);
    } finally {
      client.close();
    }
  }

  void fetchClientConfig() async {
    var client = HttpClient();
    try {
      HttpClientRequest request = await client.getUrl(clientConfigURL);
      HttpClientResponse response = await request.close();

      final stringData = await response.transform(utf8.decoder).join();
      print(stringData);
    } finally {
      client.close();
    }
  }
}
