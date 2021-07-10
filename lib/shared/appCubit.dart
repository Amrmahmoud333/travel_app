import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/shared/appStates.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  List<IconData> icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.car,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.bicycle,
  ];

  int indexSelected = 0;
  void changeIndexIconSelected(index) {
    indexSelected = index;
    emit(AppChangeIndexIconSelected());
  }
}
