import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:skeleton/app/bloc/detail_food_bloc/detail_food_bloc.dart';
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
        onPressed: () {},
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
                child: Hero(
                  tag: Get.arguments['id'],
                  child: CachedNetworkImage(
                    imageUrl: Get.arguments['img_url'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CustomScrollView(
                controller: bloc.scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      // color: Colors.amber.withOpacity(0.6),
                      height: 350,
                    ),
                  ),
                  // const SliverToBoxAdapter(
                  //   child: SizedBox(height: 10),
                  // ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: kBgWhite,
                      child: Column(
                        children: [
                          Container(
                            child: DefText(
                              bloc.foodData.strMeal ?? '',
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ).extraHuge,
                          ),
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
            ],
          );
        },
      ),
    );
  }
}
