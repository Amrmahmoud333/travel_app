import 'dart:ffi';

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
  /*Activity(
      imageUrl:
          'https://www.whattopack.com/wp-content/uploads/sites/34/2019/06/The-Ultimate-Cairo-Packing-List.jpg',
      type: 'Explore the pyramids',
      name: 'Top Rated Private Trip to Giza Pyramids,Sphinx,Camel-Ride,Lunch',
      price: 24,
      rating: 5,
      startTime: ['9:00 am', '5 pm']),
  Activity(
      imageUrl:
          'https://media-cdn.tripadvisor.com/media/photo-s/0d/4e/eb/9c/sunset-by-the-nile-river.jpg',
      type: 'Trip on the Nile',
      name: 'Felucca Sailing trip on the Nile in Cairo',
      price: 15,
      rating: 3,
      startTime: ['5:00 pm', '6:00 pm']),
  Activity(
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/b3/07/25.jpg',
    type: 'Visit Luxor Temples',
    name: 'Full Day Tour to East and West Banks of Luxor',
    price: 85,
    rating: 5,
  ),
  Activity(
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/0e/1d/54.jpg',
    type: 'Balloons Ride',
    name: 'Hot Air Balloons Ride in Luxor Egypt',
    price: 90,
    rating: 4,
  ),
  Activity(
    imageUrl:
        'https://media.tacdn.com/media/attractions-splice-spp-674x446/0a/35/f3/20.jpg',
    type: 'Horse Riding',
    name: 'Two hours Horse Riding At Amazing Desert',
    price: 30,
    rating: 3,
  ),
  Activity(
    imageUrl:
        'https://media.tacdn.com/media/attractions-splice-spp-674x446/0a/35/f3/20.jpg',
    type: 'Snorkeling Trip',
    name: 'Tiran Island Full Day Snorkeling Sea Trip',
    price: 40,
    rating: 5,
  ),*/

  // github
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTime: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
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
