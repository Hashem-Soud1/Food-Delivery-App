class FoodItem {
  final String name;
  final String imgUrl;
  final double price;
  final bool isFavorite;
  final String size;
  final int cookingTime; // in minutes
  final String calories;
  final String description;
  final String category; // Updated to include meat type

  const FoodItem({
    required this.name,
    required this.imgUrl,
    required this.price,
    this.isFavorite = false,
    required this.size,
    required this.cookingTime,
    required this.calories,
    required this.description,
    required this.category,
  });

  FoodItem copyWith({
    String? name,
    String? imgUrl,
    double? price,
    bool? isFavorite,
    String? size,
    int? cookingTime,
    String? calories,
    String? description,
    String? category,
  }) {
    return FoodItem(
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
      size: size ?? this.size,
      cookingTime: cookingTime ?? this.cookingTime,
      calories: calories ?? this.calories,
      description: description ?? this.description,
      category: category ?? this.category,
    );
  }
}

List<FoodItem> food = [
  FoodItem(
    name: 'Beef Burger',
    imgUrl: 'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 10,
    size: 'Medium',
    cookingTime: 15,
    calories: '500 kcal',
    description: 'A juicy beef patty grilled to perfection, '
        'A juicy beef patty grilled to perfection, topped with fresh vegetables and melted cheese. A classic choice for burger lovers.A juicy beef patty grilled to perfection, topped with fresh vegetables and melted cheese. A classic choice for burger lovers.topped with fresh vegetables and melted cheese. A classic choice for burger lovers.'
        ,
    category: 'Burger - Beef',
  ),
  FoodItem(
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.5,
    size: 'Large',
    cookingTime: 12,
    calories: '450 kcal',
    description: 'A crispy chicken fillet coated in a flavorful sauce, served with fresh lettuce and soft buns.',
    category: 'Burger - Chicken',
  ),
  FoodItem(
    name: 'Cheese Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8,
    size: 'Medium',
    cookingTime: 14,
    calories: '400 kcal',
    description: 'A classic cheeseburger with a generous layer of melted cheese, served with soft buns and fresh vegetables.',
    category: 'Burger - Beef',
  ),
  FoodItem(
    name: 'Chicken Pizza',
    imgUrl: 'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 9,
    size: 'Large',
    cookingTime: 20,
    calories: '700 kcal',
    description: 'Delicious pizza topped with grilled chicken pieces, special tomato sauce, and melted cheese.',
    category: 'Pizza - Chicken',
  ),
  FoodItem(
    name: 'Pasta',
    imgUrl: 'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    size: 'Small',
    cookingTime: 10,
    calories: '350 kcal',
    description: 'A delightful pasta dish coated in a rich herb-infused sauce with melted cheese, served hot for a satisfying taste.',
    category: 'Pasta - No Meat',
  ),
];
