import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'initial_state.dart';
part 'initial_cubit.freezed.dart';

@injectable
class InitialCubit extends Cubit<InitialState> {
  InitialCubit() : super(const InitialState());

}
