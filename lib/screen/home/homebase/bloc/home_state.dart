part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitialState extends HomeState {}

final class HomeLoadingState extends HomeState {}

final class HomeLoadSuccessState extends HomeState {
  final List<Product> products;
  HomeLoadSuccessState({required this.products});
}

final class HomeErrorState extends HomeState {}