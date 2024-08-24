import 'package:dio/dio.dart';
import 'package:flutter_advanced_complete_course/core/networking/dio_factory.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  // getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Home
}
