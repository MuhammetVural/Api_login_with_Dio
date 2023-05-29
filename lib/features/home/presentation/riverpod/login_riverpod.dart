import 'dart:developer';

import 'package:api_login_with_dio/components/loading_popup.dart';
import 'package:api_login_with_dio/features/home/presentation/pages/home_page.dart';
import 'package:api_login_with_dio/features/login/data/repositories/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class LoginRiverpod extends ChangeNotifier {
  final repository = LoginRepository();
 TextEditingController email = TextEditingController(); 
 TextEditingController password = TextEditingController(); 
 bool isLoading = false;


void fetch(){
  //loadingPopup();

  repository.loginCall(email: email.text, password: password.text).then((value) {
    if(value != null && value.actionLogin!.token != null){
      
      //Grock.back();
      //Grock.toRemove(HomePage());
    }else{
     // Grock.back();
     // Grock.snackBar(title: 'Hata', description: value!.actionLogin!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        .message ?? "bir sorun oluştu");
    }
  });
}

}