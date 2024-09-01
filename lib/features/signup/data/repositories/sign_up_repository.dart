import 'package:flutter_advanced_complete_course/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_complete_course/core/networking/api_services.dart';
import 'package:flutter_advanced_complete_course/features/signup/data/models/sign_up_request_body.dart';
import 'package:flutter_advanced_complete_course/features/signup/data/models/sign_up_response.dart';

import '../../../../core/networking/api_result.dart';

class SignUpRepository {
  final ApiServices _apiServices;

  SignUpRepository(this._apiServices);

  Future<ApiResult<SignUpResponse>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiServices.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
