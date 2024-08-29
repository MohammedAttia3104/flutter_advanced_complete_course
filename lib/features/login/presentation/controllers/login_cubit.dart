import 'package:flutter/cupertino.dart';
import 'package:flutter_advanced_complete_course/features/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_complete_course/features/login/data/repositories/login_repository.dart';
import 'package:flutter_advanced_complete_course/features/login/presentation/controllers/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository) : super(const LoginState.initial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void login() async {
    emit(const LoginState.loading());
    final result = await _loginRepository.login(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ));
    result.when(
      success: (response) {
        emit(LoginState.success(response));
      },
      failure: (error) {
        emit(
          LoginState.error(
            message: error.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
