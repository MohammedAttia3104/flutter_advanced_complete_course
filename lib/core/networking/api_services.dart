import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_advanced_complete_course/core/networking/api_constants.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;
}
