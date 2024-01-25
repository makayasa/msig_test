import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:skeleton/app/bloc/database_bloc/database_bloc_bloc.dart';
import 'package:skeleton/app/bloc/detail_food_bloc/detail_food_bloc.dart';
import 'package:skeleton/app/bloc/favorite_food_bloc/favorite_food_bloc.dart';
import 'package:skeleton/app/components/default_text.dart';
import 'package:skeleton/config/color_constants.dart';
import 'package:skeleton/config/constant.dart';
import 'package:skeleton/config/function_utils.dart';

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
      // logKey('scrollController.offset', scrollController.offset);
      bloc.add(DetailFoodChangeAppbarOpacity(offset: bloc.scrollController.offset));
      // logKey('opacity', context.read<DetailFoodBloc>().opacity);
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // context.read<DetailFoodBloc>().close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DetailFoodBloc>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
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
      backgroundColor: kBgWhite,
      body: BlocConsumer<DetailFoodBloc, DetailFoodState>(
        listener: (context, state) {
          // TODO: implement listener
        },
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
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  BlocConsumer<DetailFoodBloc, DetailFoodState>(
                    listener: (context, state) {
                      // TODO: implement listener
                      // logKey('listener state change di appbar', state);
                    },
                    buildWhen: (previous, current) {
                      final res = current == DetailFoodAppBarNotShowed() || current == DetailFoodAppBarShowed();
                      return res;
                    },
                    builder: (context, state) {
                      logKey('appbar rebuilt');
                      return SliverOpacity(
                        opacity: state == DetailFoodAppBarShowed() ? 1 : 0,
                        // opacity: 0,
                        sliver: SliverAppBar(
                          pinned: true,
                          surfaceTintColor: Colors.transparent,
                          shadowColor: Colors.amber,
                          elevation: 10,
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
                  SliverToBoxAdapter(
                    child: Container(
                      height: 250,
                    ),
                  ),
                  // const SliverToBoxAdapter(
                  //   child: SizedBox(height: 10),
                  // ),

                  SliverToBoxAdapter(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: kBgWhite,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefText(
                            bloc.foodData.strMeal ?? '',
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ).huge,
                          Container(
                            child: DefText(
                              bloc.foodData.strCategory ?? '',
                              color: kSecondaryColor,
                              fontWeight: FontWeight.bold,
                            ).large,
                          ),
                          Container(
                            child: DefText(
                              bloc.foodData.strArea ?? '',
                              color: kSecondaryColor,
                              fontWeight: FontWeight.bold,
                            ).large,
                          ),
                          ListView.separated(
                            itemCount: 20,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) {
                              final ingredient = bloc.foodData.toJson()['strIngredient${index + 1}'];
                              final measure = bloc.foodData.toJson()['strMeasure${index + 1}'];
                              if (isEmpty(ingredient) || isEmpty(measure)) {
                                return Container();
                              }
                              return const SizedBox(height: 10);
                            },
                            itemBuilder: (context, index) {
                              String ingredient = bloc.foodData.toJson()['strIngredient${index + 1}'] ?? '';
                              String measure = bloc.foodData.toJson()['strMeasure${index + 1}'] ?? '';
                              if (isEmpty(ingredient) || isEmpty(measure)) {
                                return Container();
                              }
                              return Container(
                                padding: kDefaultScaffoldPadding,
                                child: Row(
                                  children: [
                                    DefText(ingredient).semilarge,
                                    const SizedBox(width: 10),
                                    DefText(
                                      measure,
                                      fontWeight: FontWeight.bold,
                                    ).semilarge,
                                  ],
                                ),
                              );
                            },
                          ),
                          DefText(
                            'Instructions :',
                            fontWeight: FontWeight.bold,
                          ).extraLarge,
                          const SizedBox(height: 10),
                          Container(
                            child: DefText(
                              bloc.foodData.strInstructions ?? '',
                            ).semilarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SliverToBoxAdapter(
                  //   child: BlocBuilder<DetailFoodBloc, DetailFoodState>(
                  //     bloc: bloc,
                  //     builder: (context, state) {
                  //       return Padding(
                  //         padding: kDefaultScaffoldPadding,
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Container(
                  //               child: DefText(
                  //                 bloc.foodData.strMeal ?? '',
                  //                 color: kPrimaryColor,
                  //                 fontWeight: FontWeight.bold,
                  //               ).extraHuge,
                  //             ),
                  //             Container(
                  //               child: DefText(
                  //                 bloc.foodData.strCategory ?? '',
                  //                 color: kSecondaryColor,
                  //                 fontWeight: FontWeight.bold,
                  //               ).large,
                  //             ),
                  //             Container(
                  //               child: DefText(
                  //                 bloc.foodData.strArea ?? '',
                  //                 color: kSecondaryColor,
                  //                 fontWeight: FontWeight.bold,
                  //               ).large,
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  // const SliverToBoxAdapter(
                  //   child: SizedBox(height: 10),
                  // ),
                  // BlocBuilder<DetailFoodBloc, DetailFoodState>(
                  //   bloc: bloc,
                  //   buildWhen: (previous, current) {
                  //     // final res = current != DetailFoodAppBarNotShowed() && current != DetailFoodAppBarShowed();
                  //     // return res;
                  //     logKey(current);
                  //     // return current == DetailFoodComplete();
                  //     return false;
                  //   },
                  //   builder: (context, state) {
                  //     logKey('ingridient rebuilt');
                  //     return SliverList.separated(
                  //       itemCount: 20,
                  //       separatorBuilder: (context, index) {
                  //         final ingredient = bloc.foodData.toJson()['strIngredient${index + 1}'];
                  //         final measure = bloc.foodData.toJson()['strMeasure${index + 1}'];
                  //         if (isEmpty(ingredient) || isEmpty(measure)) {
                  //           return Container();
                  //         }
                  //         return const SizedBox(height: 10);
                  //       },
                  //       itemBuilder: (context, index) {
                  //         String ingredient = bloc.foodData.toJson()['strIngredient${index + 1}'] ?? '';
                  //         String measure = bloc.foodData.toJson()['strMeasure${index + 1}'] ?? '';
                  //         if (isEmpty(ingredient) || isEmpty(measure)) {
                  //           return Container();
                  //         }
                  //         return Container(
                  //           padding: kDefaultScaffoldPadding,
                  //           child: Row(
                  //             children: [
                  //               DefText(ingredient).semilarge,
                  //               const SizedBox(width: 10),
                  //               DefText(
                  //                 measure,
                  //                 fontWeight: FontWeight.bold,
                  //               ).semilarge,
                  //             ],
                  //           ),
                  //         );
                  //       },
                  //     );
                  //   },
                  // ),
                  // const SliverToBoxAdapter(
                  //   child: SizedBox(height: 10),
                  // ),
                  // SliverToBoxAdapter(
                  //   child: BlocBuilder<DetailFoodBloc, DetailFoodState>(
                  //     bloc: bloc,
                  //     builder: (context, state) {
                  //       return Padding(
                  //         padding: kDefaultScaffoldPadding,
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             DefText(
                  //               'Instructions :',
                  //               fontWeight: FontWeight.bold,
                  //             ).extraLarge,
                  //             const SizedBox(height: 10),
                  //             Container(
                  //               child: DefText(
                  //                 bloc.foodData.strInstructions ?? '',
                  //               ).semilarge,
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 10),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 150),
                  ),
                ],
              ),
              Positioned(
                top: 35,
                left: 10,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                    // logKey('asdasd');
                  },
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
            ],
          );
        },
      ),
    );
  }
}
