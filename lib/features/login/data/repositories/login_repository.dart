import 'package:flutter_advanced_complete_course/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_complete_course/core/networking/api_services.dart';
import 'package:flutter_advanced_complete_course/features/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_complete_course/features/login/data/models/login_response.dart';

import '../../../../core/networking/api_result.dart';

class LoginRepository {
  final ApiServices apiServices;

  LoginRepository(this.apiServices);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await apiServices.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
