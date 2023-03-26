import 'package:bloc/bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange is : $change');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose is : $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    print('onCreate is : $bloc');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(' onTransition is : $transition');
  }
}
