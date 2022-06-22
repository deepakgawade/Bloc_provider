import 'package:bloc_pattern/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/switch_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder<SwitchCubit, SwitchState>(
            builder: (context, state) {
              return Switch(
                value: state.isDarkThemeOn,
                onChanged: (newValue) {
                  context.read<SwitchCubit>().toggleSwitch(newValue);
                },
              );
            },
          ),
        ],
        title: const Text("Counter"),
      ),
      body: BlocBuilder<CounterCubit, dynamic>(
        builder: (context, state) => Text(
          "$state",
          style: textTheme.headline2,
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
