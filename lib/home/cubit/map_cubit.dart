import 'package:bloc/bloc.dart';

class MapCubit extends Cubit<double> {
  MapCubit() : super(16);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
