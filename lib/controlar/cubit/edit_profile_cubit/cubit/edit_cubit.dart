import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'edit_state.dart';

class EditCubit extends Cubit<EditState> {
  EditCubit() : super(EditInitial());
    static EditCubit change(context) => BlocProvider.of(context);

  String profile = "";
  changeprofile(name) {
    profile = name;
    emit(changeprofile(name));
  }
}
