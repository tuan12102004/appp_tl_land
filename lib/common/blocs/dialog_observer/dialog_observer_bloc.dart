import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dialog_observer_event.dart';
part 'dialog_observer_state.dart';
part 'dialog_observer_bloc.freezed.dart';

class DialogObserverBloc
    extends Bloc<DialogObserverEvent, DialogObserverState> {
  DialogObserverBloc() : super(_DialogObserverState()) {
    on<OpenTheDialog>(_onOpenTheDialog);
    on<CloseTheDialog>(_onCloseTheDialog);
  }

  // Open the dialog
  void _onOpenTheDialog(
    OpenTheDialog event,
    Emitter<DialogObserverState> emit,
  ) => emit(state.copyWith(dialogQuantity: state.dialogQuantity + 1));

  // Close the dialog
  void _onCloseTheDialog(
    CloseTheDialog event,
    Emitter<DialogObserverState> emit,
  ) => emit(
    state.copyWith(
      dialogQuantity: state.dialogQuantity > 0 ? state.dialogQuantity - 1 : 0,
    ),
  );
}
