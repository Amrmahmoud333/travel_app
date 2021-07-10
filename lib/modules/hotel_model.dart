class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'City View Hotel',
    address: '54 Egypt St',
    price: 275,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Ramada',
    address: '16F, Jeonjugaeksa',
    price: 250,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Amritara Ambatty ',
    address: 'Coorg Golf links',
    price: 340,
  ),
];
