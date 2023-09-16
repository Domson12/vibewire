import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_post_state.dart';
part 'add_post_cubit.freezed.dart';

@injectable
class AddPostCubit extends Cubit<AddPostState> {
  AddPostCubit() : super(const AddPostState());
}
