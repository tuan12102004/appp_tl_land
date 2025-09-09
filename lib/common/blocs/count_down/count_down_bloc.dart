import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_down_event.dart';
part 'count_down_state.dart';
part 'count_down_bloc.freezed.dart';

class CountDownBloc extends Bloc<CountDownEvent, CountDownState> {
  Timer? _timer;
  late int _second;

  CountDownBloc() : super(Initial()) {
    on<_StartCountdown>(_onStartCountdown);
    on<_CancelCountdown>(_onCancelCountdown);
    on<_Tick>(_onTick);
  }

  // Start countdown
  void _onStartCountdown(
    _StartCountdown event,
    Emitter<CountDownState> emit,
  ) {
    _second = event.second;
    emit(RemainingTime(
      time: _second.toString().padLeft(2, "0"),
      isActive: true,
    ));

    _timer = Timer.periodic(
      Duration(seconds: 1),
      (_) => add(_Tick()),
    );
  }

  // Tick
  void _onTick(_Tick event, Emitter<CountDownState> emit) {
    if (_second <= 0) {
      _cancelCountdown();
      emit(RemainingTime(time: "00", isActive: false));
    } else {
      emit(RemainingTime(
        time: _second.toString().padLeft(2, "0"),
        isActive: true,
      ));
      _second--;
    }
  }

  // Cancel coundown
  void _onCancelCountdown(
    _CancelCountdown event,
    Emitter<_$CountDownState> emit,
  ) {
    _cancelCountdown();
    emit(RemainingTime(
      time: "0",
      isActive: false,
    ));
  }

  void _cancelCountdown() {
    _timer?.cancel();
    _timer = null;
    _second = 0;
  }

  // Close
  @override
  Future<void> close() {
    _cancelCountdown();
    return super.close();
  }
}
