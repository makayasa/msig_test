import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:skeleton/app/bloc/list_food_bloc/list_foods_bloc.dart';
import 'package:skeleton/app/components/default_text.dart';
import 'package:skeleton/config/color_constants.dart';
import 'package:skeleton/config/function_utils.dart';

import '../../../bloc/database_bloc/database_bloc_bloc.dart';
import '../../../bloc/favorite_food_bloc/favorite_food_bloc.dart';
import '../../list_food/components/food_card.dart';

class ListFavoritesFoodView extends StatefulWidget {
  const ListFavoritesFoodView({Key? key}) : super(key: key);

  @override
  State<ListFavoritesFoodView> createState() => _ListFavoritesFoodViewState();
}

class _ListFavoritesFoodViewState extends State<ListFavoritesFoodView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FavoriteFoodBloc>();
    return Scaffold(
      appBar: AppBar(
        title: DefText('Your Favorites Are Here', color: kWhiteMilk).huge,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: kWhiteMilk,
          ),
        ),
      ),
      backgroundColor: kBgWhite,
      body: BlocConsumer<FavoriteFoodBloc, FavoriteFoodState>(
        bloc: bloc,
        listener: (context, state) {
          logKey('listener favorite $state', bloc.favoriteFoods.length);
        },
        builder: (context, state) {
          return BlocBuilder<FavoriteFoodBloc, FavoriteFoodState>(
            bloc: bloc,
            buildWhen: (previous, current) {
              return true;
            },
            builder: (context, state) {
              if (state == FavoriteFootEmpty()) {
                return Center(
                  child: DefText('Still Empty Here...').huge,
                );
              }
              return MasonryGridView.count(
                addAutomaticKeepAlives: true,
                itemCount: bloc.favoriteFoods.length,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                itemBuilder: (context, index) {
                  final data = bloc.favoriteFoods[index];
                  final imgUrl = data.strMealThumb;
                  final heroTag = 'favorite_${data.idMeal}';
                  return Stack(
                    children: [
                      FoodCard(
                        heroTag: heroTag,
                        imgUrl: imgUrl ?? '',
                        foodName: data.strMeal ?? '',
                        foodCategory: data.strCategory ?? '',
                        countryName: data.strArea ?? '',
                        onTap: () {
                          logKey('data.idMeal', data.idMeal);
                          final listFoodBloc = context.read<ListFoodsBloc>();
                          listFoodBloc.toDetailFood(data.idMeal ?? '', heroTag, imgUrl ?? '');
                        },
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            icon: const Icon(
                              Icons.delete_outline,
                            ),
                            onPressed: () {
                              final dbBloc = context.read<DatabaseBloc>();
                              bloc.add(FavoriteFoodRemove(mealId: data.idMeal!, dbBloc: dbBloc));
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
