import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cheak.g.dart';

@riverpod
class Cheak extends _$Cheak {
  @override
  bool build() {
    return true;
  }
}
@riverpod
class Cheakbox extends _$Cheakbox {
  @override
  bool build() {
    return false;
  }
}