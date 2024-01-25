import 'package:flutter/widgets.dart';

import '../../../../config/color_constants.dart';
import '../../../../config/constant.dart';
import '../../../../config/function_utils.dart';
import '../../../bloc/detail_food_bloc/detail_food_bloc.dart';
import '../../../components/default_text.dart';

class IngridientsCard extends StatelessWidget {
  const IngridientsCard({
    super.key,
    required this.bloc,
  });

  final DetailFoodBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: kWhiteMilk,
        borderRadius: kDefaultBorderRadius10,
        border: Border.all(
          color: kPrimaryColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: DefText('Ingridients :', fontWeight: FontWeight.bold).large,
          ),
          const SizedBox(height: 20),
          ListView.separated(
            padding: EdgeInsets.zero,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '$ingredient : ',
                              style: kDefaultTextStyle.copyWith(fontSize: 15.7),
                            ),
                            TextSpan(
                              text: measure,
                              style: kDefaultTextStyle.copyWith(
                                fontSize: 15.7,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
