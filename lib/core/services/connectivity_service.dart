import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  static Future<bool> checkConnectivity() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    return isConnectivity(connectivityResult);
  }

  static bool isConnectivity(ConnectivityResult connectivityResult) {
    switch (connectivityResult) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.mobile:
        return true;
      case ConnectivityResult.bluetooth:
      case ConnectivityResult.none:
      case ConnectivityResult.vpn:
      case ConnectivityResult.other:
        return false;
    }
  }
}
