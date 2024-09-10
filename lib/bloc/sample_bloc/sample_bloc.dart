import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_design_pattern/bloc/sample_bloc/sample_event.dart';
import 'package:flutter_design_pattern/bloc/sample_bloc/sample_state.dart';
import 'package:flutter_design_pattern/data/services/sample_service.dart';

class SampleBloc extends Bloc<SampleEvent, SampleState> {
  final MsSampleService msSampleService;

  SampleBloc({required this.msSampleService}) : super(const InitialState()) {
    on<FetchAllSampleData>(
      (_, emit) async {
        emit(SampleLoading());
        try {
          final result = await msSampleService.getAllSample();
          emit(FetchAllSampleSuccess(result));
        } catch (e) {
          emit(FetchAllSampleError(e.toString()));
        }
      },
    );
  }
}
