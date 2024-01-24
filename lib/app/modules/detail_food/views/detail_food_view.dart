import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:skeleton/app/bloc/detail_food_bloc/detail_food_bloc.dart';
import 'package:skeleton/app/components/default_text.dart';
import 'package:skeleton/config/color_constants.dart';
import 'package:skeleton/config/function_utils.dart';

class DetailFoodView extends StatefulWidget {
  const DetailFoodView({Key? key}) : super(key: key);

  @override
  State<DetailFoodView> createState() => _DetailFoodViewState();
}

class _DetailFoodViewState extends State<DetailFoodView> {
  final scrollController = ScrollController();

  @override
  void initState() {
    context.read<DetailFoodBloc>().add(DetailFoodGet());
    logKey('ini state detailfoodview');
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // context.read<DetailFoodBloc>().close();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DetailFoodBloc>();
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {
      //       Get.back();
      //     },
      //     icon: const Icon(
      //       Icons.arrow_back_ios_new_outlined,
      //       color: kWhiteMilk,
      //     ),
      //   ),
      //   title: BlocConsumer<DetailFoodBloc, DetailFoodState>(
      //     bloc: bloc,
      //     listener: (context, state) {
      //       logKey('state', state);
      //       // TODO: implement listener
      //     },
      //     builder: (context, state) {
      //       return DefText(
      //         bloc.foodData.strMeal ?? '',
      //         fontWeight: FontWeight.bold,
      //       ).large;
      //     },
      //   ),
      //   centerTitle: true,
      // ),
      backgroundColor: kBgWhite,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Hero(
              tag: Get.arguments['id'],
              child: SizedBox(
                height: 250,
                child: CachedNetworkImage(
                  imageUrl: Get.arguments['img_url'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: BlocConsumer<DetailFoodBloc, DetailFoodState>(
              bloc: bloc,
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                  ],
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          BlocConsumer<DetailFoodBloc, DetailFoodState>(
            bloc: bloc,
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return SliverList.separated(
                itemCount: 20,
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
              );
            },
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: BlocConsumer<DetailFoodBloc, DetailFoodState>(
              bloc: bloc,
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          // SliverToBoxAdapter(
          //   child: BlocConsumer<DetailFoodBloc, DetailFoodState>(
          //     bloc: bloc,
          //     listener: (context, state) {
          //       // TODO: implement listener
          //       if (state == DetailFoodComplete() && isNotEmpty(bloc.foodData.strYoutube)) {
          //         final vid = YoutubePlayer.convertUrlToId(bloc.foodData.strYoutube!);
          //         youtubeController = YoutubePlayerController(
          //           initialVideoId: vid!,
          //         );
          //         // youtubeController.load(vid);
          //       }
          //     },
          //     builder: (context, state) {
          //       return YoutubePlayer(
          //         controller: youtubeController,
          //         onReady: () {
          //           logKey('ready');
          //         },
          //       );
          //     },
          //   ),
          // ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
        ],
      ),
    );
  }
}
