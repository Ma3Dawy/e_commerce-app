import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'thems_state.dart';

class ThemsCubit extends Cubit<ThemsState> {
  ThemsCubit() : super(ThemsInitial());

  static ThemsCubit get(context) => BlocProvider.of(context);
  bool darkmood = false;
   changemode() {
    darkmood = !darkmood;
    emit(Changemode());
  }
}
