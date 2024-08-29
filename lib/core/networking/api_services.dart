import 'package:dio/dio.dart';
import 'package:flutter_advanced_complete_course/features/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_complete_course/features/login/data/models/login_response.dart';
import 'package:flutter_advanced_complete_course/features/signup/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_advanced_complete_course/core/networking/api_constants.dart';

import '../../features/signup/data/models/sign_up_request_body.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signUp)
  Future<SignUpResponse> signUp(
    @Body() SignUpRequestBody signUpRequestBody,
  );
}
