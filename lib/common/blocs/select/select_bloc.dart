import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_event.dart';
part 'select_state.dart';
part 'select_bloc.freezed.dart';

class SelectBloc<T> extends Bloc<SelectEvent<T>, SelectState<T>> {
  SelectBloc() : super(InitialSelect<T>()) {
    on<_Select<T>>(_onSelect);
    on<_Reset<T>>(_onReset);
  }

 void _onSelect(_Select<T> event, Emitter<SelectState<T>> emit) {
     if (event.value == null) {
      emit(InitialSelect<T>());
    } else {
      emit(Selected(value: event.value));
    }
  }

  void _onReset(_Reset<T> event, Emitter<SelectState<T>> emit) {
    emit(InitialSelect<T>());
  }
}