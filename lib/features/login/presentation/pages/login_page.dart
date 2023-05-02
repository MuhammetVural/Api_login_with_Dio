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
      body: Column(children: [
        TextField(controller: ref.read(loginRiverpod).email),
        TextField(controller: ref.read(loginRiverpod).password,),
        ElevatedButton(onPressed: (){}, child: Text('Giriş Yap'))
      ],),
    );
  }
}