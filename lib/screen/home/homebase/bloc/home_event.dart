part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class HomeInitEvent extends HomeEvent {}

final class HomeRefreshEvent extends HomeEvent {}

final class HomeSearchEvent extends HomeEvent {}

final class HomeClickProductEvent extends HomeEvent {
  final int productId;
  HomeClickProductEvent({required this.productId});
}