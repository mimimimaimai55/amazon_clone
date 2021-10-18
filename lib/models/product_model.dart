class Product{
  String imageUrl;
  String name;
  int price;

  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
  });
}

final List<Product> products = [
  Product(
    imageUrl: 'assets/images/mxmaster.jpg',
    name: 'Logitech MX Master 2S',
    price: 5990,
  ),
  Product(
    imageUrl: 'assets/images/blueyeti.jpg',
    name: 'Blue Yeti USB Microphone',
    price: 10900,

  ),
  Product(
    imageUrl: 'assets/images/macbookpro.jpg',
    name: 'MacBook Pro 13-inch (2019)',
    price: 119999,

  ),
  Product(
    imageUrl: 'assets/images/keyboard.jpg',
    name: 'Apple Magic Keyboard',
    price: 8899,

  ),
  Product(
    imageUrl: 'assets/images/jbl.jpg',
    name: 'JBL Bluetooth Speaker',
    price: 9995,

  ),
];

final List<Product> books = [
  Product(
    imageUrl: 'assets/images/thirddoor.jpg',
    name: 'The Third Door',
    price: 1849,

  ),
  Product(
    imageUrl: 'assets/images/unfu_kyourself.jpg',
    name: 'Unfu*k Yourself',
    price: 1840,

  ),
  Product(
    imageUrl: 'assets/images/crushingit.jpg',
    name: 'Crushing It',
    price: 1898,
  ),
  Product(
    imageUrl: 'assets/images/powerofhabit.jpg',
    name: 'The Power of Habit',
    price: 1020,
  ),
];

final List<Product> cart = [
  products[3],
  books[2],
  products[1],
  books[0],
  products[4],
];