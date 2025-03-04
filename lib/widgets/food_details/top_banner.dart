import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food_item.dart';
import 'package:food_delivery_app/widgets/custom_back_button.dart';
import 'package:food_delivery_app/widgets/favorite_button.dart';

class TopBanner extends StatelessWidget {
  final int foodIndex;
  const TopBanner({super.key, required this.foodIndex});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: SafeArea(
          child: SizedBox(
            height: size.height * 0.4,
            width: size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBackButton(
                      width: size.width * 0.09,
                      height: size.height * 0.04,
                    ),
                    FavoriteButton(
                      foodIndex:foodIndex ,
                      width: size.width * 0.09,
                      height: size.height * 0.04,
                    ),
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Image.network(
                    food[foodIndex].imgUrl,
                    fit: BoxFit.contain,
                    height: size.height * 0.3,
                    width: size.width,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}