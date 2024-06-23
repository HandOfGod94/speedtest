import 'package:speedtest/speedtest.dart';

void runApp(Speedtest speedtester) {
  speedtester
    ..fetchServers()
    ..fetchClientConfig();
}
