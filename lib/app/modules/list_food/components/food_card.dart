import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../config/color_constants.dart';
import '../../../../config/constant.dart';
import '../../../components/default_text.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.heroTag,
    required this.imgUrl,
    required this.foodName,
    required this.foodCategory,
    required this.countryName,
    this.onTap,
  });
  final dynamic heroTag;
  final String imgUrl;
  final String foodName;
  final String foodCategory;
  final String countryName;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                  imageUrl: imgUrl,
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
                    foodName,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                    lineHeight: 1.1,
                  ).large,
                  const SizedBox(height: 2),
                  DefText(
                    foodCategory,
                    color: kSecondaryColor,
                  ).semilarge,
                  const SizedBox(height: 10),
                  DefText(
                    countryName,
                    fontWeight: FontWeight.bold,
                  ).normal,
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
