import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:skeleton/app/bloc/bloc/list_foods_bloc.dart';
import 'package:skeleton/app/components/default_text.dart';
import 'package:skeleton/config/function_utils.dart';

import '../../../../config/color_constants.dart';
import '../../../../config/constant.dart';

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
        title: const Text('ListFoodView'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<ListFoodsBloc>().add(
              ListFoodsGet(),
            );
      }),
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
            // gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 2,
            // ),
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
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: kDefaultBorderRadius10,
                  border: Border.all(
                    color: kPrimaryColor2,
                    width: 1.5,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                      child: Container(
                        constraints: const BoxConstraints(minHeight: 150),
                        child: CachedNetworkImage(
                          imageUrl: imgUrl!,
                          placeholder: (context, url) {
                            return Container(
                              height: 150,
                              color: kInactiveColor,
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefText(
                            data.strMeal ?? '',
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                            lineHeight: 1.1,
                          ).large,
                          const SizedBox(height: 2),
                          DefText(
                            data.strCategory ?? '',
                            color: kSecondaryColor,
                          ).semilarge,
                          const SizedBox(height: 10),
                          DefText(
                            data.strArea ?? '',
                            fontWeight: FontWeight.bold,
                          ).normal,
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              );
            },
          );
          // return ListView.separated(
          //   controller: scrollController,
          //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          //   itemCount: bloc.listFoods.length,
          //   separatorBuilder: (context, index) {
          //     return const SizedBox(height: 10);
          //   },
          //   itemBuilder: (context, index) {
          //     final data = bloc.listFoods[index];
          //     final imgUrl = data.strMealThumb;

          //     return Container(
          //       child: Row(
          //         children: [
          //           Container(
          //             height: 150,
          //             child: Column(
          //               children: [
          //                 Container(
          //                   height: 100,
          //                   width: 100,
          //                   child: CachedNetworkImage(
          //                     height: 100,
          //                     imageUrl: imgUrl ?? '',
          //                   ),
          //                 ),
          //                 DefText(
          //                   data.strArea ?? '',
          //                 ).large
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     );

          //     return Container(
          //       decoration: const BoxDecoration(
          //         borderRadius: kDefaultBorderRadius10,
          //         color: kPrimaryColor2,
          //       ),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Container(
          //             height: 200,
          //             width: double.infinity,
          //             child: ClipRRect(
          //               borderRadius: const BorderRadius.vertical(
          //                 top: Radius.circular(10),
          //               ),
          //               child: CachedNetworkImage(
          //                 imageUrl: imgUrl!,
          //                 fit: BoxFit.fitWidth,
          //               ),
          //             ),
          //           ),
          //           const SizedBox(height: 5),
          //           Padding(
          //             padding: kDefaultScaffoldPadding,
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 DefText(
          //                   data.strMeal ?? '',
          //                   fontWeight: FontWeight.bold,
          //                 ).large,
          //                 DefText(
          //                   data.strCategory ?? '',
          //                 ).semilarge,
          //                 const SizedBox(height: 10),
          //                 DefText(
          //                   data.strArea ?? '',
          //                 ).normal,
          //               ],
          //             ),
          //           ),
          //           const SizedBox(height: 10),
          //         ],
          //       ),
          //     );

          //     return Container(
          //       padding: const EdgeInsets.only(left: 10),
          //       height: 200,
          //       width: double.infinity,
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: kDefaultBorderRadius10,
          //         border: Border.all(
          //           color: kPrimaryColor2,
          //         ),
          //       ),
          //       child: Row(
          //         children: [
          //           // Expanded(
          //           //   child: DefText('${data.strMeal ?? 'kosong'}').normal,
          //           // ),
          //           Expanded(
          //             child: Container(
          //               color: Colors.lightBlue,
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   DefText(
          //                     data.strMeal ?? '',
          //                     fontWeight: FontWeight.bold,
          //                     maxLine: 2,
          //                     color: kPrimaryColor,
          //                     lineHeight: 1.1,
          //                   ).semilarge,
          //                   const SizedBox(height: 2),
          //                   DefText(data.strCategory ?? '', color: kSecondaryColor).normal,
          //                   const SizedBox(height: 10),
          //                   DefText(
          //                     data.strArea ?? '',
          //                     fontWeight: FontWeight.bold,
          //                   ).flex,
          //                 ],
          //               ),
          //             ),
          //           ),
          //           // const SizedBox(width: 5),
          //           SizedBox(
          //             height: double.infinity,
          //             child: ClipPath(
          //               clipper: MyClipper(),
          //               child: CachedNetworkImage(
          //                 imageUrl: imgUrl!,
          //                 height: 30,
          //                 placeholder: (context, url) {
          //                   return Container(
          //                     height: double.infinity,
          //                     color: Colors.amber,
          //                     width: 1,
          //                   );
          //                 },
          //                 errorWidget: (context, url, error) {
          //                   return Container(
          //                     height: double.infinity,
          //                   );
          //                 },
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     );
          //   },
          // );
        },
      ),
    );
  }
}
