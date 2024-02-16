import 'package:flutter/material.dart';
import 'package:restaurant_delivery_flutter/utils/color_utils.dart';

class AddToCartPage extends StatelessWidget {
  final String food;
  const AddToCartPage({super.key, required this.food});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/$food.png',
                height: MediaQuery.of(context).size.height * 0.2,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                const Text(
                  "Wheat noodles served in a meat-based broth, flavored with soy sauce and toppings (sliced pork, nori, menma and scallions)",
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Nutritional value per plate",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("380"),
                        SizedBox(height: 5.0),
                        Text(
                          "kcal",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("13.1"),
                        SizedBox(height: 5.0),
                        Text(
                          "proteins",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("20.2"),
                        SizedBox(height: 5.0),
                        Text(
                          "fats",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("35.6"),
                        SizedBox(height: 5.0),
                        Text(
                          "carbs",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.grey[200],
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(width: 10),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.grey[200],
                      child: const Icon(Icons.remove),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorUtils.appBlack,
                        ),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Row(
                            children: [
                              Text(
                                "Add to cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$ 4,99",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
