import 'package:speedtest/speedtest.dart';
import 'package:speedtest/runner.dart';

void main(List<String> arguments) {
  runApp(
    Speedtest(
      serverSourceURL:
          Uri.https("speedtest.net", "speedtest-servers-static.php"),
      clientConfigURL: Uri.https("speedtest.net", "speedtest-config.php"),
    ),
  );
}
