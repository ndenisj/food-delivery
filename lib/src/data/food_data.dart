class Food {
  final String id;
  final String imagePath;
  final String category;
  final String name;
  final double price;
  final double discount;
  final double ratings;

  Food(
      {this.id,
      this.name,
      this.imagePath,
      this.category,
      this.discount,
      this.price,
      this.ratings});
}

final foods = [
  Food(
      id: '1',
      name: 'Hot coffee',
      imagePath: 'assets/images/breakfast.jpeg',
      category: '1',
      price: 22.0,
      discount: 33.5,
      ratings: 9.0),
  Food(
      id: '1',
      name: 'Grilled Chicken',
      imagePath: 'assets/images/lunch.jpeg',
      category: '1',
      price: 22.0,
      discount: 33.5,
      ratings: 7.0),
];
