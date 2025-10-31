import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_event.dart';
part 'contact_state.dart';
part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final GetContactsUsecase _getContactsUsecase;

  ContactBloc({required GetContactsUsecase getContactsUsecase})
      : _getContactsUsecase = getContactsUsecase,
        super(const ContactState()) {
    on<GetContacts>(_onGetContacts);
  }

  void _onGetContacts(GetContacts event, Emitter<ContactState> emit) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _getContactsUsecase.call(NoParam());
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (contacts) => emit(state.copyWith(isLoading: false, contacts: contacts)),
    );
  }
}