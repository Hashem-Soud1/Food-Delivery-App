import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food_item.dart';
import 'package:food_delivery_app/widgets/food_details/food_item_counter.dart';
import 'package:food_delivery_app/widgets/food_details/property_item.dart';
import 'package:food_delivery_app/widgets/food_details/top_banner.dart';

class FoodDetailsPage extends StatelessWidget {
  final FoodItem foodItem;
  const FoodDetailsPage({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBanner(foodItem: foodItem),
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
                            foodItem.name,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 6.0),
                          Text(
                            '${foodItem.category} ',
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
                            propertyName: 'Size', propertyValue: foodItem.size),
                        const VerticalDivider(
                          indent: 0,
                          endIndent: 0,
                        ),
                        PropertyItem(
                            propertyName: 'Calories',
                            propertyValue: foodItem.calories.toString()
                        ),
                        const VerticalDivider(
                          indent: 0,
                          endIndent: 0,
                        ),
                        PropertyItem(
                            propertyName: 'Cooking',
                            propertyValue: foodItem.cookingTime.toString()),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    '${foodItem.description} ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.grey[500],
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  Row(
                    children: [
                      Text(
                        '\$ ${foodItem.price}',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 46.0),
                      Expanded(

                        child: SizedBox(
                          height: size.height * 0.058,
                          child: ElevatedButton(
                            onPressed: () {},
                            child:Text(
                                'Checkout',
                              style: TextStyle(
                                color:Theme.of(context).primaryColor,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}