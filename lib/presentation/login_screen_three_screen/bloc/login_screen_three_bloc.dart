import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:csd_flutter_application/presentation/login_screen_three_screen/models/login_screen_three_model.dart';
part 'login_screen_three_event.dart';
part 'login_screen_three_state.dart';

class LoginScreenThreeBloc
    extends Bloc<LoginScreenThreeEvent, LoginScreenThreeState> {
  LoginScreenThreeBloc(LoginScreenThreeState initialState)
      : super(initialState) {
    on<LoginScreenThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginScreenThreeInitialEvent event,
    Emitter<LoginScreenThreeState> emit,
  ) async {
    emit(state.copyWith(groupthirtyController: TextEditingController()));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.signUpScreen,
      );
    });
  }
}
