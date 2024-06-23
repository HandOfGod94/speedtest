import 'package:speedtest/httpclient.dart' as http;

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
      var response = await http.fetchData(serverSourceURL);
      print(response);
    } on Exception catch (e) {
      print("Unknown exception: $e");
    }
  }

  void fetchClientConfig() async {
    try {
      var response = await http.fetchData(clientConfigURL);
      print(response);
    } on Exception catch (e) {
      print("Unknown exception: $e");
    }
  }
}
