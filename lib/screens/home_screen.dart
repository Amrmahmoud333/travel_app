import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/shared/appCubit.dart';
import 'package:travel_app/shared/appStates.dart';
import 'package:travel_app/widget/home_layout/destinationCarousel.dart';
import 'package:travel_app/widget/home_layout/hotelCarousel.dart';
import 'package:travel_app/widget/home_layout/iconBuilder.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            AppCubit cubit = AppCubit.get(context);

            return Scaffold(
              body: SafeArea(
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 120),
                      child: Text(
                        'What you would like to find?',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // convert the icons list to map key=index , value = icons
                      // and loop on map
                      children: cubit.icons
                          .asMap()
                          .entries
                          .map(
                            (MapEntry map) => iconBuilder(map.key, context),
                          )
                          .toList(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    destinationCarousel(context),
                    SizedBox(
                      height: 20,
                    ),
                    hotelCarousel(context),
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeBottomNavBar(index);
                },
                items: cubit.bottomItems,
              ),
            );
          }),
    );
  }
}
