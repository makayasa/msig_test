import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:skeleton/app/bloc/database_bloc/database_bloc_bloc.dart';
import 'package:skeleton/app/bloc/detail_food_bloc/detail_food_bloc.dart';
import 'package:skeleton/app/bloc/favorite_food_bloc/favorite_food_bloc.dart';
import 'package:skeleton/app/components/default_text.dart';
import 'package:skeleton/app/routes/app_pages.dart';
import 'package:skeleton/config/color_constants.dart';
import 'package:skeleton/config/constant.dart';
import 'package:skeleton/config/function_utils.dart';

import '../components/ingridients_card.dart';
import '../components/instruction_card.dart';

class DetailFoodView extends StatefulWidget {
  const DetailFoodView({Key? key}) : super(key: key);

  @override
  State<DetailFoodView> createState() => _DetailFoodViewState();
}

class _DetailFoodViewState extends State<DetailFoodView> {
  @override
  void initState() {
    logKey('arg', Get.previousRoute);
    final bloc = context.read<DetailFoodBloc>();
    bloc.add(DetailFoodGet());
    bloc.scrollController.addListener(() {
      // logKey(bloc.scrollController.offset);
      bloc.add(DetailFoodChangeAppbarOpacity(offset: bloc.scrollController.offset));
      // if (bloc.scrollController.offset >= 350) {
      //   bloc.opacity = 1;
      // }
      // bloc.opacity = (bloc.scrollController.offset / 350);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DetailFoodBloc>();
    return Scaffold(
      floatingActionButton: BlocBuilder<DetailFoodBloc, DetailFoodState>(
        buildWhen: (previous, current) {
          return current == DetailFoodLoading() || current == DetailFoodComplete() || current == DetailFoodError();
        },
        builder: (context, state) {
          return Visibility(
            visible: state == DetailFoodComplete() && Get.previousRoute != Routes.LIST_FAVORITES_FOOD,
            child: FloatingActionButton(
              backgroundColor: kPrimaryColor,
              child: const Icon(
                Icons.save_outlined,
                color: kWhiteMilk,
              ),
              onPressed: () {
                
                // return;
                final favFoodBloc = context.read<FavoriteFoodBloc>();
                final dbBloc = context.read<DatabaseBloc>();
                favFoodBloc.add(
                  FavoriteFoodsAddFavorite(
                    foodData: bloc.foodData,
                    dbBloc: dbBloc,
                  ),
                );
              },
            ),
          );
        },
      ),
      backgroundColor: kBgWhite,
      body: BlocConsumer<DetailFoodBloc, DetailFoodState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Stack(
            children: [
              SizedBox(
                height: 350,
                width: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: Get.arguments['img_url'],
                  fit: BoxFit.cover,
                ),
              ),
              CustomScrollView(
                controller: bloc.scrollController,
                // physics: state == DetailFoodComplete() ? const AlwaysScrollableScrollPhysics() : const NeverScrollableScrollPhysics(),
                slivers: [
                  //* appbar
                  BlocConsumer<DetailFoodBloc, DetailFoodState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return SliverOpacity(
                        opacity: bloc.opacity,
                        sliver: SliverAppBar(
                          pinned: true,
                          surfaceTintColor: Colors.transparent,
                          shadowColor: kBgBlack,
                          elevation: 10,
                          centerTitle: true,
                          title: DefText(
                            bloc.foodData.strMeal ?? '',
                            color: kWhiteMilk,
                          ).huge,
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
                      );
                    },
                  ),
                  //* transparrent box
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 250,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: kDefaultScaffoldPadding,
                      decoration: const BoxDecoration(
                        color: kBgWhite,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                      ),
                      child: BlocBuilder<DetailFoodBloc, DetailFoodState>(
                        buildWhen: (previous, current) {
                          return current == DetailFoodLoading() || current == DetailFoodComplete() || current == DetailFoodError();
                        },
                        builder: (context, state) {
                          if (state == DetailFoodError()) {
                            return Center(
                              child: DefText('Error').huge,
                            );
                          }
                          return AnimatedCrossFade(
                            crossFadeState: state == DetailFoodLoading() ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                            duration: kDefaultFastDuration,
                            layoutBuilder: (topChild, topChildKey, bottomChild, bottomChildKey) {
                              return topChild;
                            },
                            firstChild: Container(
                              height: Get.height,
                            ),
                            secondChild: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                //* title
                                Center(
                                  child: Opacity(
                                    opacity: bloc.iconOpacity,
                                    child: DefText(
                                      bloc.foodData.strMeal ?? '',
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold,
                                      textAlign: TextAlign.center,
                                    ).huge,
                                  ),
                                ),
                                //* category and country
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: DefText(
                                          bloc.foodData.strCategory ?? '',
                                          color: kSecondaryColor,
                                          fontWeight: FontWeight.bold,
                                        ).large,
                                      ),
                                      const SizedBox(width: 5),
                                      const SizedBox(
                                        height: 15,
                                        child: VerticalDivider(
                                          color: kSecondaryColor,
                                          width: 2,
                                          thickness: 2,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        child: DefText(
                                          bloc.foodData.strArea ?? '',
                                          color: kSecondaryColor,
                                          fontWeight: FontWeight.bold,
                                        ).large,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 2),
                                //* tags
                                Visibility(
                                  visible: isNotEmpty(bloc.foodData.strTags),
                                  child: Center(
                                    child: DefText(
                                      bloc.foodData.strTags ?? '',
                                      color: kSecondaryColor,
                                    ).large,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                IngridientsCard(bloc: bloc),
                                const SizedBox(height: 10),
                                const SizedBox(height: 10),
                                InstructionCard(bloc: bloc),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 10),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 150),
                  ),
                ],
              ),
              BlocBuilder<DetailFoodBloc, DetailFoodState>(
                builder: (context, state) {
                  return Positioned(
                    top: 35,
                    left: 10,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                        // logKey('asdasd');
                      },
                      child: Opacity(
                        opacity: bloc.iconOpacity,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: kBgWhite,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(6),
                          child: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
