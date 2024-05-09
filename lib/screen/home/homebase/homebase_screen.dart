import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gaboot_mobile/screen/home/homebase/bloc/home_bloc.dart';
import 'package:gaboot_mobile/screen/home/homebase/category_component.dart';
import 'package:gaboot_mobile/screen/home/homebase/filter_component.dart';
import 'package:gaboot_mobile/screen/home/homebase/listprodpilihan_component.dart';
import 'package:gaboot_mobile/screen/home/homebase/topbanner_component.dart';
import 'package:gaboot_mobile/ui_collection/color_system.dart';

class HomeBaseScreen extends StatefulWidget {
  final BuildContext cntx;
  const HomeBaseScreen({super.key, required this.cntx});

  @override
  State<HomeBaseScreen> createState() => _HomeBaseScreenState();
}

class _HomeBaseScreenState extends State<HomeBaseScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  HomeBloc? homeBloc;

  @override
  void initState() {
    homeBloc = HomeBloc(context: widget.cntx);
    homeBloc!.add(HomeInitEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocProvider(
      create: (context) => HomeBloc(context: context),
      child: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: () async {
          homeBloc!.add(HomeRefreshEvent());
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              flexibleSpace: appBar(),
              expandedHeight: 70,
            ),
            SliverToBoxAdapter(
              child: BlocBuilder<HomeBloc, HomeState>(
                bloc: homeBloc,
                builder: (context, state) {
                  print(state.runtimeType);
                  switch (state.runtimeType) {
                    case HomeLoadingState:
                      return SizedBox(height: MediaQuery.of(context).size.height / 2, child: const CircularProgressIndicator());
                    case HomeLoadSuccessState:
                      final succState = state as HomeLoadSuccessState;
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                            child: TopBannerComponent(banners: succState.banners),
                          ),
                          HomebaseCategoryComponent(categories: succState.categories),
                          const FilterComponent(),
                          ListProdPilihanComponent(products: succState.products)
                        ],
                      );
                    case HomeErrorState:
                      return const Center(child: Text("Error"));
                    default:
                      return const Center(
                        child: Text("No State Found"),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /* APP BAR */
  PreferredSizeWidget? appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight + 40),
      child: AppBar(
        title: TextField(
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: const InputDecoration(
            hintText: 'Cari barang yang kamu inginkan...',
            hintStyle: TextStyle(color: Colors.white54),
            border: InputBorder.none,
          ),
          onChanged: (value) {},
        ),
        backgroundColor: ColSys().primary,
      ),
    );
  }
}
