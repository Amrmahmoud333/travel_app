import 'package:flutter/material.dart';
import 'package:travel_app/shared/appCubit.dart';

InkWell iconBuilder(index, context) {
  var cubit = AppCubit.get(context);
  return InkWell(
    onTap: () {
      cubit.changeIndexIconSelected(index);
    },
    child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: cubit.indexSelected == index
            ? Theme.of(context).accentColor
            : Color(0xFFE7EBEE),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(
        cubit.icons[index],
        color: cubit.indexSelected == index
            ? Theme.of(context).primaryColor
            : Color(0xFFB4C1C4),
      ),
    ),
  );
}
