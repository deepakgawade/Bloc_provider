import 'package:bloc/bloc.dart';
import 'package:bloc_pattern/counter/cubit/counter_cubit.dart';
import 'package:bloc_pattern/counter/cubit/switch_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter/view/counter_page.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CounterCubit>(
            create: (BuildContext context) => CounterCubit(),
          ),
          BlocProvider<SwitchCubit>(
            create: (BuildContext context) => SwitchCubit(),
          ),
        ],
        child: BlocBuilder<SwitchCubit, SwitchState>(builder: (context, state) {
          return MaterialApp(
            theme: state.theme,
            home: CounterPage(),
          );
        }));
  }
}
