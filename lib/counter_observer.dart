import 'package:bloc/bloc.dart';
//will observe the state change
class CounterObserver extends BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
    print('${bloc.runtimeType} $change');
    super.onChange(bloc, change);
  }
}