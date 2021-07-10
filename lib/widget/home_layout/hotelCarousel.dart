import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/modules/destination_model.dart';
import 'package:travel_app/modules/hotel_model.dart';

Column hotelCarousel(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Exclusive Hotels',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'See All',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: hotels.length,
          itemBuilder: (context, index) {
            //Destination destination = destinations[index];
            return Container(
              margin: const EdgeInsets.all(10),
              width: 240,
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Positioned(
                    bottom: 15.0,
                    child: Container(
                      width: 240,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              hotels[index].name,
                              style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2),
                            ),
                            Text(
                              hotels[index].address,
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '\$${hotels[index].price} / night',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        height: 180.0,
                        width: 220.0,
                        image: AssetImage(hotels[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ],
  );
}
