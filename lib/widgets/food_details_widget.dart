import 'package:flutter/material.dart';
import 'package:restaurant_delivery_flutter/pages/add_to_cart_page.dart';
import 'package:restaurant_delivery_flutter/utils/color_utils.dart';

class FoodDetailsWidget extends StatelessWidget {
  final String food;
  final String description;
  const FoodDetailsWidget(
      {super.key, required this.food, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 20,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/$food.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(description),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return AddToCartPage(food: food);
                  },
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "\$ 4,99",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: ColorUtils.appBlack,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
