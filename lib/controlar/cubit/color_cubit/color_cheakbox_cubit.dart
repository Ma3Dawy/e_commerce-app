import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'color_cheakbox_state.dart';

class ColorCheakboxCubit extends Cubit<ColorCheakboxState> {
  ColorCheakboxCubit() : super(ColorCheakboxInitial());
  static ColorCheakboxCubit get(context) => BlocProvider.of(context);
  bool cheak1 = false;
  bool cheak2 = false;
  bool cheak3 = false;

  void cheakbox1() {
    cheak1 = !cheak1;
    emit(Changestate1());
  }

  void cheakbox2() {
    cheak2 = !cheak2;
    emit(Changestate2());
  }

  void cheakbox3() {
    cheak3 = !cheak3;
    emit(Changestate3());
  }
}
