import 'package:dio/dio.dart';
import 'package:flutter_advanced_complete_course/core/networking/api_services.dart';
import 'package:flutter_advanced_complete_course/features/login/data/repositories/login_repository.dart';
import 'package:flutter_advanced_complete_course/features/login/presentation/controllers/login_cubit.dart';
import 'package:flutter_advanced_complete_course/features/signup/data/repositories/sign_up_repository.dart';
import 'package:flutter_advanced_complete_course/features/signup/presentation/controllers/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void setUpGetIt() {
  // Dio && ApiService
  final Dio dio = Dio();
  sl.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  //login
  sl.registerLazySingleton<LoginRepository>(() => LoginRepository(sl()));
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));

  //sign up
  sl.registerLazySingleton<SignUpRepository>(() => SignUpRepository(sl()));
  sl.registerLazySingleton<SignUpCubit>(() => SignUpCubit(sl()));
}
