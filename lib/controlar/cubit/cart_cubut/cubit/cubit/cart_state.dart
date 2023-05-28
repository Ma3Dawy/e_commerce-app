part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}
class IncrementState extends CartState {}
class DecrementState extends CartState {}

