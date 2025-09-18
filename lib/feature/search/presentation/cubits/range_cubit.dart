import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RangeCubit extends Cubit<RangeValues> {
  RangeCubit() : super(const RangeValues(0, 999999));

  void select(RangeValues value) {
    emit(value);
  }

  void updateMin(double min) {
    emit(RangeValues(min, state.end));
  }

  void updateMax(double max) {
    emit(RangeValues(state.start, max));
  }

  void reset() {
    emit(const RangeValues(0, 999999));
  }
}
