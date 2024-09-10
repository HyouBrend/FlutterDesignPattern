import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_design_pattern/bloc/dropdown/dropdown_event.dart';
import 'package:flutter_design_pattern/bloc/dropdown/dropdown_state.dart';
import 'package:flutter_design_pattern/data/services/sample_service.dart';

class ListDropdownContentBloc
    extends Bloc<ListDropdownEvent, ListDropdownContentState> {
  final MsSampleService msSampleService;

  ListDropdownContentBloc({required this.msSampleService})
      : super(ListDropdownContentInitial()) {
    on<FetchListDropdownData>((event, emit) async {
      try {
        emit(ListDropdownContentLoading());
        final result = await msSampleService.getAllSample();

        if (result.data != null && result.data!.isNotEmpty) {
          emit(ListDropdownContentHasData(result.data!));
        } else {
          emit(ListDropdownContentEmpty());
        }
      } catch (error) {
        emit(ListDropdownContentError(error.toString()));
      }
    });

    on<ChangeMarkdown>((event, emit) {
      emit(ListDropdownContentHasData(event.resourceId));
    });
  }
}
