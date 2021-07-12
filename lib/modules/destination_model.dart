import 'activities_model.dart';

class Destination {
  String imageUrl, city, country, description;
  List<Activity> activities;
  Destination(
      {this.imageUrl,
      this.country,
      this.city,
      this.description,
      this.activities});
}

List<Activity> activities = [
  Activity(
      imageUrl: 'assets/images/e5.jpg',
      type: 'Explore the pyramids',
      name: 'Top Rated Private Trip to Giza Pyramids,Sphinx,Camel-Ride,Lunch',
      country: 'Egypt',
      price: 24,
      rating: 5,
      startTime: ['9:00 am', '5 pm']),
  Activity(
      imageUrl: 'assets/images/e4.jpg',
      type: 'Trip on the Nile',
      name: 'Felucca Sailing trip on the Nile in Cairo',
      country: 'Egypt',
      price: 15,
      rating: 3,
      startTime: ['5:00 pm', '6:00 pm']),

  Activity(
    imageUrl: 'assets/images/e3.jpg',
    type: 'Balloons Ride',
    name: 'Hot Air Balloons Ride in Luxor Egypt',
    country: 'Egypt',
    price: 90,
    rating: 4,
    startTime: ['6:00 am', '7:00 pm'],
  ),
  Activity(
    imageUrl: 'assets/images/e1.jpg',
    type: 'Horse Riding',
    name: 'Two hours Horse Riding At Amazing Desert',
    country: 'Egypt',
    price: 30,
    rating: 3,
    startTime: ['12:00 am', '1:00 pm'],
  ),
  Activity(
    imageUrl: 'assets/images/e2.jpg',
    type: 'Snorkeling Trip',
    name: 'Tiran Island Full Day Snorkeling Sea Trip',
    country: 'Egypt',
    price: 40,
    rating: 5,
    startTime: ['6:00 am', '7:00 am'],
  ),

  // github
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    country: 'France',
    startTime: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    country: 'Brazil',
    startTime: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpeg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    country: 'India',
    startTime: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destination = [
  Destination(
    imageUrl: 'assets/images/cairo.jpg',
    country: 'Egypt',
    city: 'Cario',
    activities: activities,
    description: 'Visit many wonderful places in Egypt',
  ),
  Destination(
    imageUrl: 'assets/images/paris.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/newdelhi.jpg',
    city: 'New Delhi',
    country: 'India',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/saopaulo.jpg',
    city: 'Sao Paulo',
    country: 'Brazil',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
