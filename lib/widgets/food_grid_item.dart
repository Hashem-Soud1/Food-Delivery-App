import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food_item.dart';
import 'package:food_delivery_app/widgets/favorite_button.dart';

class FoodGridItem extends StatelessWidget {
  final int foodIndex;
  const FoodGridItem({
    super.key,
    required this.foodIndex,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.network(
                    food[foodIndex].imgUrl,
                    height: constraints.maxHeight * 0.55,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: FavoriteButton(
                      foodIndex: foodIndex,
                      height: constraints.maxHeight * 0.2,
                      width: constraints.maxWidth * 0.2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: constraints.maxHeight * 0.05),
              SizedBox(
                height: constraints.maxHeight * 0.2,
                child: FittedBox(
                  child: Text(
                    food[foodIndex].name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: constraints.maxHeight * 0.01),
              SizedBox(
                height: constraints.maxHeight * 0.17,
                child: FittedBox(
                  child: Text(
                    '\$ ${food[foodIndex].price}',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}