// ignore_for_file: must_be_immutable

part of 'login_screen_three_bloc.dart';

class LoginScreenThreeState extends Equatable {
  LoginScreenThreeState({
    this.groupthirtyController,
    this.loginScreenThreeModelObj,
  });

  TextEditingController? groupthirtyController;

  LoginScreenThreeModel? loginScreenThreeModelObj;

  @override
  List<Object?> get props => [
        groupthirtyController,
        loginScreenThreeModelObj,
      ];
  LoginScreenThreeState copyWith({
    TextEditingController? groupthirtyController,
    LoginScreenThreeModel? loginScreenThreeModelObj,
  }) {
    return LoginScreenThreeState(
      groupthirtyController:
          groupthirtyController ?? this.groupthirtyController,
      loginScreenThreeModelObj:
          loginScreenThreeModelObj ?? this.loginScreenThreeModelObj,
    );
  }
}
