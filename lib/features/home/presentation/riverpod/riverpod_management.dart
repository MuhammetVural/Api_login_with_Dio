import 'package:api_login_with_dio/features/home/presentation/riverpod/login_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginRiverpod = ChangeNotifierProvider((ref) => LoginRiverpod());