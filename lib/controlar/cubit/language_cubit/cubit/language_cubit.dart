import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());
  static LanguageCubit cheakstate(context) => BlocProvider.of(context);
  List<String> langouges = [
    "English",
    "Frensh",
    "German",
    "Chinese",
    "Japanese",
    "Turkish"
  ];
  String pos = "English";
  String langaugestate(String value) {
    pos = value;
    emit(Language());
    return value;
  }
}
