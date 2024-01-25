import 'package:flutter/widgets.dart';

import '../../../../config/color_constants.dart';
import '../../../../config/constant.dart';
import '../../../bloc/detail_food_bloc/detail_food_bloc.dart';
import '../../../components/default_text.dart';

class InstructionCard extends StatelessWidget {
  const InstructionCard({
    super.key,
    required this.bloc,
  });

  final DetailFoodBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: kDefaultBorderRadius10,
        border: Border.all(
          color: kPrimaryColor,
        ),
        color: kWhiteMilk,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefText(
            'Instructions :',
            fontWeight: FontWeight.bold,
          ).extraLarge,
          const SizedBox(height: 10),
          DefText(
            bloc.foodData.strInstructions ?? '',
          ).semilarge,
        ],
      ),
    );
  }
}
