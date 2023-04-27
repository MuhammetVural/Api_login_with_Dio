import 'package:dio/dio.dart';

class NetworkManager {
  static final NetworkManager _instance = NetworkManager._();

  NetworkManager._();

  static NetworkManager get instance => _instance;

  final Dio networkManager =
      Dio(BaseOptions(baseUrl: 'https://assign-api.piton.com.tr/api/rest/'));
}
