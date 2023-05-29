import 'package:api_login_with_dio/features/home/presentation/pages/home_page.dart';
import 'package:api_login_with_dio/features/home/presentation/riverpod/riverpod_management.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(controller: ref.read(loginRiverpod).email),
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(controller: ref.read(loginRiverpod).password,),
        ),
        ElevatedButton(onPressed: (){
          
          ref.read(loginRiverpod).fetch();
          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomePage()));
          }, child: const Text('Giriş Yap'))
      ],),
    );
  }
}