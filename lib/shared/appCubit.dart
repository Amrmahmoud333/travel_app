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

  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.search,
        size: 30,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.alarm_rounded,
        size: 30,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: CircleAvatar(
        radius: 15,
        backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/60432384?s=400&u=306ce83430bc4771886248ebaf99e75d0319998f&v=4'),
      ),
      label: '',
    ),
  ];
  void changeBottomNavBar(int index) {
    currentIndex = index;

    emit(AppBottomNavState());
  }
}
