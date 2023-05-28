import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orderstate_state.dart';

class OrderstateCubit extends Cubit<OrderstateState> {
  OrderstateCubit() : super(Orderinitial());

  static OrderstateCubit cheakstate(context) => BlocProvider.of(context);
  String pos1 = "";
  String orderstate() {
    emit(Pendingstate());
    pos1 = "Pending";
    return pos1;
  }
  String orderstate2() {
    emit(Canseledstate());
    pos1 = "Canseled";
    return pos1;
  }
  String orderstate3() {
    emit(Deliveredstate());
    pos1 = "Delivered";
    return pos1;
  }
}
