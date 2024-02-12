import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gaboot_mobile/product/product_model.dart';
import 'package:gaboot_mobile/product/product_screen.dart';
import 'package:gaboot_mobile/product/product_service.dart';

/* ================================== STATE ================================== */
@immutable
abstract class ProductState {}

class ProductActionState extends ProductState {}

class ProductInitial extends ProductState {}

class ProductLoadingState extends ProductState {}

class ProductLoadedSuccessState extends ProductState {
  final List<Product> products;
  ProductLoadedSuccessState({
    required this.products,
  });
}

class ProductLoadedErrorState extends ProductState {}
/* ================================== END OF STATE ================================== */

/* ================================== EVENT ================================== */
@immutable
sealed class ProductEvent {}

class ProductInitialEvent extends ProductEvent {}

class ProductLoadEvent extends ProductEvent {}

class ProductClickNavigateEvent extends ProductEvent {}
/* ================================== END OF EVENT ================================== */

/* ================================== BLOC ================================== */
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final BuildContext context;

  ProductBloc({ required this.context }) : super(ProductInitial()) {
    on<ProductInitialEvent>(categoryInitialEvent);
    on<ProductClickNavigateEvent>(categoryClickNavigateEvent);
  }

  FutureOr<void> categoryInitialEvent(
      ProductInitialEvent event, Emitter<ProductState> emit) async {
    print('category initial event');
    /* LOADING */
    emit(ProductLoadingState());

    try {
      /* GET CATEGORY DATA */
      final data = await ProductService().getProducts();
      final List<Product> products = data.data!;

      /* EMIT DATA */
      emit(ProductLoadedSuccessState(products: products));
    } catch (e) {
      emit(ProductLoadedErrorState());
    }
  }

  void categoryClickNavigateEvent(ProductClickNavigateEvent event, Emitter<ProductState> emit) {
    print('category clicked');

    /* NAVIGATE TO PRODUCT SCREEN */
    Navigator.push(context, MaterialPageRoute(builder: (_) => const ProductScreen()));

  }
}
/* ================================== END OF BLOC ================================== */