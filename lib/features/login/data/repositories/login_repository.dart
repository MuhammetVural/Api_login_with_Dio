

import 'package:api_login_with_dio/core/network_manager/network_manager.dart';
import 'package:api_login_with_dio/features/login/data/model/login_model.dart';
import 'package:dio/dio.dart';

class LoginRepository{
  final String baseUrl = "https://assign-api.piton.com.tr/api/rest/";
   NetworkManager? networkManager;
   final dio = Dio();
   Future<LoginModel?> loginCall({
    required String email, 
    required String password})async{
      Map<String, dynamic> json = {"email": email, "password": password};
    try{
      final response = await dio.post('${baseUrl}login', data: json );
   if(response.statusCode == 200){
      var result = LoginModel.fromJson(response.data);
      //print("gelen response => ${response.data.toString()}" );
      return result;
    }
    else{
      throw ('bir sorun ${response.statusCode}');
    }
    }
    on DioError catch (e){
      e.response!.statusCode != 200;
      throw ('bir sorun');
      
    }
     
  
    }
}