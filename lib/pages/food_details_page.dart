import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food_item.dart';
import 'package:food_delivery_app/widgets/custom_back_button.dart';
import 'package:food_delivery_app/widgets/favorite_button.dart';
import 'package:food_delivery_app/widgets/food_details/food_item_counter.dart';
import 'package:food_delivery_app/widgets/food_details/property_item.dart';

class FoodDetailsPage extends StatelessWidget {
  final int foodIndex;
  const FoodDetailsPage({super.key, required this.foodIndex});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(),
      body:
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopBanner(foodIndex: foodIndex),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 16.0,
                        bottom: 46.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    food[foodIndex].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 6.0),
                                  Text(
                                    '${food[foodIndex].category} ',
                                    style:
                                    Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              FoodItemCounter(),
                            ],
                          ),
                          const SizedBox(height: 32.0),
                          IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PropertyItem(
                                    propertyName: 'Size', propertyValue: food[foodIndex].size),
                                const VerticalDivider(
                                  indent: 0,
                                  endIndent: 0,
                                ),
                                PropertyItem(
                                    propertyName: 'Calories',
                                    propertyValue: food[foodIndex].calories.toString()
                                ),
                                const VerticalDivider(
                                  indent: 0,
                                  endIndent: 0,
                                ),
                                PropertyItem(
                                    propertyName: 'Cooking',
                                    propertyValue: food[foodIndex].cookingTime.toString()),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Text(
                            '${food[foodIndex].description} ',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.grey[500],
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 32.0),
              
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    '\$ ${food[foodIndex].price}',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(
                      color: Theme.of(context).primaryColor,

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 46.0),
                  Expanded(

                    child: SizedBox(
                      height: size.height * 0.058,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {},
                        child:Text(
                          'Checkout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      


    );
  }
}