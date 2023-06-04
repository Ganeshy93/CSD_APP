import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:csd_flutter_application/presentation/student_profile_screen/models/student_profile_model.dart';
part 'student_profile_event.dart';
part 'student_profile_state.dart';

class StudentProfileBloc
    extends Bloc<StudentProfileEvent, StudentProfileState> {
  StudentProfileBloc(StudentProfileState initialState) : super(initialState) {
    on<StudentProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StudentProfileInitialEvent event,
    Emitter<StudentProfileState> emit,
  ) async {}
}
