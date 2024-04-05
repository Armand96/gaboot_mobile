part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitialState extends HomeState {}

final class HomeLoadingState extends HomeState {}

final class HomeLoadSuccessState extends HomeState {
  final List<Product> products;
  final List<Category> categories;
  HomeLoadSuccessState({required this.products, required this.categories});
}

final class HomeErrorState extends HomeState {}