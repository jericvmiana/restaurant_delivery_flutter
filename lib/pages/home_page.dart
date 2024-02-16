import 'package:flutter/material.dart';
import 'package:restaurant_delivery_flutter/utils/color_utils.dart';
import 'package:restaurant_delivery_flutter/widgets/category_widget.dart';
import 'package:restaurant_delivery_flutter/widgets/food_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'Noodles',
      'Tacos',
      'Burgers',
      'Sushi',
      'Salads'
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0XFFFF7867),
                        Color(0xFFFFDD67),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top + 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: ColorUtils.appBlack,
                                    radius: 30,
                                    child: Icon(
                                      Icons.dashboard_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Column(
                                    children: [
                                      Text("deliver to"),
                                      Text(
                                        "Home",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: ClipOval(
                                        child: Image.asset(
                                          'assets/robot.png',
                                          width: 60,
                                          height: 60,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.05),
                              const Text(
                                "Lookin' for something special?",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Find whatever you need",
                                  hintStyle: const TextStyle(
                                      color: Colors
                                          .grey), // Set hint text color to grey
                                  prefixIcon: const Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    // Optional: Add this to maintain space
                                    borderRadius: BorderRadius.circular(
                                        40), // Set border radius to create circular edges
                                    borderSide: BorderSide
                                        .none, // Remove the border line
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 16),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Colors.grey[200],
                            child: const Icon(Icons.filter_list_rounded),
                          ),
                          const SizedBox(width: 5.0),
                          for (var category in categories)
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: CategoryWidget(category: category),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Fastest delivery time",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const FoodWidget(
                      food: "food_1",
                    ),
                    const SizedBox(height: 10.0),
                    const FoodWidget(
                      food: "food_2",
                    ),
                    const SizedBox(height: 10.0),
                    const FoodWidget(
                      food: "food_3",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
