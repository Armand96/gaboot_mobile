import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gaboot_mobile/category/category_model.dart';
import 'package:gaboot_mobile/category/category_service.dart';
import 'package:gaboot_mobile/product/product_screen.dart';

/* ================================== STATE ================================== */
@immutable
abstract class CategoryState {}

class CategoryActionState extends CategoryState {}

class CategoryInitial extends CategoryState {}

class CategoryLoadingState extends CategoryState {}

class CategoryLoadedSuccessState extends CategoryState {
  final List<Category> categories;
  CategoryLoadedSuccessState({
    required this.categories,
  });
}

class CategoryLoadedErrorState extends CategoryState {}
/* ================================== END OF STATE ================================== */

/* ================================== EVENT ================================== */
@immutable
sealed class CategoryEvent {}

class CategoryInitialEvent extends CategoryEvent {}

class CategoryLoadEvent extends CategoryEvent {}

class CategoryClickNavigateEvent extends CategoryEvent {
  final int categoryId ;
  CategoryClickNavigateEvent({required this.categoryId});
}
/* ================================== END OF EVENT ================================== */

/* ================================== BLOC ================================== */
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final BuildContext context;

  CategoryBloc({ required this.context }) : super(CategoryInitial()) {
    on<CategoryInitialEvent>(categoryInitialEvent);
    on<CategoryClickNavigateEvent>(categoryClickNavigateEvent);
  }

  FutureOr<void> categoryInitialEvent(
      CategoryInitialEvent event, Emitter<CategoryState> emit) async {
    print('category initial event');
    /* LOADING */
    emit(CategoryLoadingState());

    try {
      /* GET CATEGORY DATA */
      final data = await CategoryService().getCategories();
      final List<Category> categories = data.data!;

      /* EMIT DATA */
      emit(CategoryLoadedSuccessState(categories: categories));
    } catch (e) {
      emit(CategoryLoadedErrorState());
    }
  }

  void categoryClickNavigateEvent(CategoryClickNavigateEvent event, Emitter<CategoryState> emit) {
    print('category clicked');

    /* NAVIGATE TO PRODUCT SCREEN */
    Navigator.push(context, MaterialPageRoute(builder: (_) => const ProductScreen()));

  }
}
/* ================================== END OF BLOC ================================== */