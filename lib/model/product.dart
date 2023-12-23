class Product {
  String? image;
  String? name;
  String? description;
  double? price;
  String? image1;
  String? name1;
  String? description1;
  double? price1;

  Product(
      {this.image,
      this.name,
      this.description,
      this.price,
      this.image1,
      this.name1,
      this.description1,
      this.price1});
}

List<Product> productes = [
  Product(
      image: 'assets/images/pngfuel 11.png',
      name: 'Diet Coke',
      description: '355ml, Price',
      price: 1.99,
      image1: 'assets/images/pngfuel 12.png',
      name1: 'Sprite Can',
      description1: '355ml, Price',
      price1: 1.50),
  Product(
      image: 'assets/images/juice-apple.png',
      name: 'Apple & Grape \n Juice',
      description: '2L, Price',
      price: 15.99,
      image1: 'assets/images/juice-apple-grape.png',
      name1: 'Orenge Juice',
      description1: '2L, Price',
      price1: 15.99),
  Product(
      image: 'assets/images/pngfuel 13.png',
      name: 'Coca Cola Can',
      description: '325ml, Price',
      price: 4.99,
      image1: 'assets/images/pngfuel 14.png',
      name1: 'Pepsi Can ',
      description1: '325ml, Price',
      price1: 4.99),
];
List<Product> bestselling = [
  Product(
      image: 'assets/images/orange.jpg',
      name: 'orange',
      description: '1kg, Priceg',
      price: 5.00),
  Product(
      image: 'assets/images/paper.jpg',
      name: 'Red pepper',
      description: '2kg, Priceg',
      price: 4.99),
  Product(
      image: 'assets/images/Cucumber .jpg',
      name: 'Cucumber',
      description: '2.5kg, Priceg',
      price: 3.00),
];
List<Product> groceries2 = [
  Product(
      image: 'assets/images/beaf.png',
      name: 'Beef Bone',
      description: '1kg, Priceg',
      price: 50.00),
  Product(
      image: 'assets/images/chiken.png',
      name: 'Broiler Chicken',
      description: '2kg, Priceg',
      price: 39.99),
  Product(
      image: 'assets/images/fish.jpg',
      name: 'fish',
      description: '2.5kg, Priceg',
      price: 40.00),
];
