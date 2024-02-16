import 'package:flutter/material.dart';
import 'package:restaurant_delivery_flutter/utils/color_utils.dart';

class FoodCategoryWidget extends StatelessWidget {
  final String category;
  const FoodCategoryWidget({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: Colors.white,
      ),
      child: Text(
        category,
        style: const TextStyle(
          color: ColorUtils.appBlack,
          fontSize: 17.0,
        ),
      ),
    );
  }
}
