import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:skeleton/app/components/default_text.dart';
import 'package:skeleton/app/modules/list_food/components/food_card.dart';
import 'package:skeleton/config/function_utils.dart';

import '../../../../config/color_constants.dart';
import '../../../bloc/list_food_bloc/list_foods_bloc.dart';

class ListFoodView extends StatefulWidget {
  const ListFoodView({Key? key}) : super(key: key);

  @override
  State<ListFoodView> createState() => _ListFoodViewState();
}

class _ListFoodViewState extends State<ListFoodView> with AutomaticKeepAliveClientMixin {
  final scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    context.read<ListFoodsBloc>().add(ListFoodsGet());
    scrollController.addListener(() {
      if (context.read<ListFoodsBloc>().state == ListFoodsPaginationLoading()) {
        return;
      }
      if (scrollController.offset >= scrollController.position.maxScrollExtent - 100) {
        context.read<ListFoodsBloc>().add(ListFoodsPagination());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scrollController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final bloc = context.read<ListFoodsBloc>();
    return Scaffold(
      appBar: AppBar(
        title: DefText('Foodee').huge,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.favorite,
              color: kWhiteMilk,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      backgroundColor: kBgWhite,
      body: BlocConsumer<ListFoodsBloc, ListFoodsState>(
        bloc: bloc,
        listener: (context, state) {
          logKey('listener', state);
        },
        builder: (context, state) {
          if (state == ListFoodsLoading()) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return MasonryGridView.count(
            controller: scrollController,
            addAutomaticKeepAlives: true,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            itemCount: bloc.listFoods.length,
            itemBuilder: (context, index) {
              final data = bloc.listFoods[index];
              final imgUrl = data.strMealThumb;
              return FoodCard(
                id: data.idMeal ?? '',
                imgUrl: imgUrl ?? '',
                foodName: data.strMeal ?? '',
                foodCategory: data.strCategory ?? '',
                countryName: data.strArea ?? '',
                onTap: () {
                  bloc.toDetailFood(data.idMeal ?? '', imgUrl ?? '');
                },
              );
            },
          );
        },
      ),
    );
  }
}
