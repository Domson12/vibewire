import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_main_state.dart';
part 'add_main_cubit.freezed.dart';

@injectable
class AddMainCubit extends Cubit<AddMainState> {
  AddMainCubit() : super(const AddMainState());
}
