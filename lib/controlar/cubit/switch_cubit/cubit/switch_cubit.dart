import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'switch_state.dart';

class SwitchCubit extends Cubit<SwitchState> {
  SwitchCubit() : super(SwitchInitial());
  static SwitchCubit switchs(context) => BlocProvider.of(context);
  bool intstat = false;
  changestate() {
    intstat = !intstat;
    emit(Changeswitch());
  }
}
