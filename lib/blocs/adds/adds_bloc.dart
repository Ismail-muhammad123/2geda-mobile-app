import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'adds_event.dart';
part 'adds_state.dart';

class AddsBloc extends Bloc<AddsEvent, AddsState> {
  AddsBloc() : super(AddsInitial()) {
    on<AddsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
