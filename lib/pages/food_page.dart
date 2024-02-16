import 'package:flutter/material.dart';
import 'package:restaurant_delivery_flutter/utils/color_utils.dart';
import 'package:restaurant_delivery_flutter/widgets/food_category_widget.dart';
import 'package:restaurant_delivery_flutter/widgets/food_details_widget.dart';

class FoodPage extends StatelessWidget {
  final String food;
  const FoodPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.37,
                  child: Image.asset(
                    'assets/images/$food.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 10.0,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0),
                      CircleAvatar(
                        backgroundColor: ColorUtils.appBlack.withOpacity(0.8),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: ColorUtils.appBlack.withOpacity(0.8),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Noodles & Ramen",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("812 Avenue, 153673"),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text("Delivery time"),
                        Spacer(),
                        Text("30-45 minutes"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Delivery cost"),
                        Spacer(),
                        Text("\$ 5-10"),
                      ],
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        FoodCategoryWidget(category: 'Classic'),
                        SizedBox(width: 20.0),
                        FoodCategoryWidget(category: 'Experimental'),
                        SizedBox(width: 20.0),
                        FoodCategoryWidget(category: 'Specialty'),
                        SizedBox(width: 20.0),
                        FoodCategoryWidget(category: 'Specialty'),
                        SizedBox(width: 20.0),
                        FoodCategoryWidget(category: 'Specialty'),
                      ]),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        FoodDetailsWidget(
                          food: 'food_1',
                          description: "Classic ramen with chicken and egg",
                        ),
                        SizedBox(width: 10.0),
                        FoodDetailsWidget(
                          food: 'food_2',
                          description: "Classic ramen with pork and egg",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
