import 'package:api_login_with_dio/core/network_manager/network_manager.dart';
import 'package:api_login_with_dio/features/login/data/model/login_model.dart';
import 'package:dio/dio.dart';

class LoginRepository{
  late NetworkManager networkManager;
   final dio = Dio();
   Future<LoginModel?>loginCall({required String email, required String password})async{
    var response = await dio.post(networkManager.networkManager as String);}
}