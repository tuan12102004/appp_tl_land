import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryCubit extends Cubit<Map<String, bool>> {
  CategoryCubit() : super({});
  void init({required Map<String, bool> values}) {
    emit(Map<String, bool>.from(values));
  }

  // Toggle hoặc cập nhật giá trị checkbox
  void checkBox(String key, bool value) {
    final newState = Map<String, bool>.from(state);
    newState[key] = value; // set true/false cho key
    emit(newState);
  }

  // Reset: tất cả về false
  void reset() {
    final newState = Map<String, bool>.from(state);
    newState.updateAll((key, _) => false);
    emit(newState);
  }
}
