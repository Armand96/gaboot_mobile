part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitialState extends HomeState {}

final class HomeLoadingState extends HomeState {}

final class HomeLoadSuccessState extends HomeState {
  final List<Product> products;
  final List<Category> categories;
  final List<BannerM> banners;
  HomeLoadSuccessState({required this.products, required this.categories, required this.banners});
}

final class HomeErrorState extends HomeState {}