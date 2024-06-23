import 'dart:convert';
import 'dart:io';
import 'package:speedtest/client.dart' as client;

class Speedtest {
  final Uri serverSourceURL;
  final Uri clientConfigURL;

  String? server;

  Speedtest({
    required this.serverSourceURL,
    required this.clientConfigURL,
  });

  void fetchServers() async {
    try {
      var response = await client.fetchData(serverSourceURL);
      print(response);
    } on Exception catch (e) {
      print("Unknown exception: $e");
    }
  }

  void fetchClientConfig() async {
    try {
      var response = await client.fetchData(clientConfigURL);
      print(response);
    } on Exception catch (e) {
      print("Unknown exception: $e");
    }
  }
}
