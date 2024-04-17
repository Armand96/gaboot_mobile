import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gaboot_mobile/category/bloc/category_bloc.dart';
import 'package:gaboot_mobile/category/category_model.dart';

class CategoryScreen extends StatefulWidget {
  final BuildContext cntx;
  const CategoryScreen({super.key, required this.cntx});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  CategoryBloc? categoryBloc;
  final xCount = 2;

  @override
  void initState() {
    categoryBloc = CategoryBloc(context: widget.cntx);
    categoryBloc!.add(CategoryInitialEvent());
    super.initState();
  }

  Future<void> refresh() async {
    categoryBloc!.add(CategoryInitialEvent());
  }

  void productList(String categoryId) {
    print("button pressed");
    categoryBloc!.add(CategoryClickNavigateEvent(categoryId: categoryId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Category",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocConsumer(
        bloc: categoryBloc,
        listenWhen: (previous, current) => current is CategoryActionState,
        buildWhen: (previous, current) => current is! CategoryActionState,
        listener: (context, state) {},
        builder: (context, state) {
          print(state.runtimeType);
          switch (state.runtimeType) {
            case CategoryLoadingState:
              return const Center(child: CircularProgressIndicator());
            case CategoryLoadedSuccessState:
              final successState = state as CategoryLoadedSuccessState;
              // print(successState);
              return view(context, xCount, successState.categories);
            case CategoryLoadedErrorState:
              return const Center(child: Text('ERROR'));
            default:
              return const Center(child: Text("DEFAULT"));
          }
        },
      ),
    );
  }

  Widget btn(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.blue,
        disabledBackgroundColor: Colors.red,
      ),
      onPressed: (){},
      child: Text(text),
    );
  }

  Widget view(BuildContext context, int crossXCount, List<Category> data) {
    return RefreshIndicator(
      onRefresh: refresh,
      child: GridView.count(
        crossAxisCount: crossXCount,
        children: List.generate(data.length, (index) {
          return Center(
            child: GestureDetector(
              onTap: () {productList(data[index].id);},
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('asset/images/noimage.png'),
                        // image: NetworkImage(Config().baseUrlImage + categoryModel.link),
                      ),
                    ),
                  ),
                  Text(
                    data[index].name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
