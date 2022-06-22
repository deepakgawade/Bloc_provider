import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CounterCubit extends Cubit{
  CounterCubit() : super(0);

  void increment()=>emit(state+1);
  void decrement()=>emit(state-1);
  ThemeData _themeData =ThemeData.light();

  ThemeData getTheme() => _themeData;

  void setTheme(ThemeData themeData) async {
    _themeData = themeData;
  }
  //void toggleTheme(bool value)=>value?ThemeData.dark():ThemeData.light();
}