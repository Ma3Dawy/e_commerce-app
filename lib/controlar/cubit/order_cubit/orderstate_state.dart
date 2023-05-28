part of 'orderstate_cubit.dart';

@immutable
abstract class OrderstateState {}

class Orderinitial extends OrderstateState {}
class Pendingstate extends OrderstateState {}
class Canseledstate extends OrderstateState {}
class Deliveredstate extends OrderstateState {}
