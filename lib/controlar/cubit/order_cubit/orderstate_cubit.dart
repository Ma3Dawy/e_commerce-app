import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orderstate_state.dart';

class OrderstateCubit extends Cubit<OrderstateState> {
  OrderstateCubit() : super(Pendingstate());

  static OrderstateCubit cheakstate(context) => BlocProvider.of(context);
  List<String> statuse = ["Pending", "Canceled", "Delivered"];
  String pos = "Pending";
  String orderstate(String value) {
    if (value == "Pending") {
      emit(Pendingstate());
      pos = value;
      return value;
    } else {
      emit(Changestate());
      pos = value;
      return value;
    }
  }
}
