import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  static CartCubit ordernumber(context) => BlocProvider.of(context);
  int num1 = 1;
  int num2 = 1;
  int num3 = 1;
  int num4 = 1;
  int num5 = 1;

  increment() {
    num1++;
    emit(IncrementState());

  }

  decrement() {
    num1--;
    if (num1 == 0) {
      return num1 = 1;
    }
    emit(DecrementState());
  }
     increment2() {
    num2++;
    emit(IncrementState());
  }

  decrement2() {
    num2--;
    if (num2 == 0) {
      return num2 = 1;
    }
    emit(DecrementState());
  }  increment3() {
    num3++;
    emit(IncrementState());
    
  }

  decrement3() {
    num3--;
    if (num3 == 0) {
      return num3 = 1;
    }
    emit(DecrementState());
  }
  increment4() {
    num4++;
    emit(IncrementState());
    
  }

  decrement4() {
    num4--;
    if (num4 == 0) {
      return num4 = 1;
    }
    emit(DecrementState());
  }
  increment5() {
    num5++;
    emit(IncrementState());
    
  }

  decrement5() {
    num5--;
    if (num5 == 0) {
      return num5 = 1;
    }
    emit(DecrementState());
  }
  
 

}
