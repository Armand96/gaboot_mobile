import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gaboot_mobile/category/category_model.dart';
import 'package:gaboot_mobile/category/category_service.dart';
import 'package:gaboot_mobile/product/product_model.dart';
import 'package:gaboot_mobile/product/product_service.dart';
// import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final BuildContext context;

  HomeBloc({ required this.context}) : super(HomeInitialState()) {
    on<HomeInitEvent>(getAllData);
    on<HomeRefreshEvent>(getAllData);
    on<HomeClickProductEvent>(detailProduct);
  }

  FutureOr<void> getAllData(HomeEvent event, Emitter<HomeState> emit) async {
    print("loading");

    emit(HomeLoadingState());

    try {
      /* get product pilihan */
      final resp = await ProductService().getProducts();
      final List<Product> products = resp.data!;

      /* get categories */
      final respCat = await CategoryService().getCategories();
      final List<Category> categories = respCat.data!;
      // final List<Product> products = [Product(id: 1, name: "name", description: "description", price: 100, stock: 0, dimension: "dimension", weight: 20, weightUnit: "weightUnit", categoryId: 1)];
      // final List<Category> categories = [Category(id: 1, name: "Cat", description: "description", createdAt: DateTime.now(), updatedAt: DateTime.now())];
      // await Future.delayed(const Duration(seconds: 2));
      print("Loaded All Data");
      emit(HomeLoadSuccessState(products: products, categories: categories));
    } catch (e) {
      print(e);
      emit(HomeErrorState());
    }
  }

  FutureOr<void> detailProduct(HomeClickProductEvent event, Emitter<HomeState> emit) {
    print('product detail');
  }
}
