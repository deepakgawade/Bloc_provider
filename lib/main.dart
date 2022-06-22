import 'package:bloc_pattern/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_observer.dart';

void main() {
  BlocOverrides.runZoned(
      () => runApp(
             CounterApp(),
          ),
      blocObserver: CounterObserver());
}

