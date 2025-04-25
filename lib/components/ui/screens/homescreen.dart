import 'package:flutter/material.dart';
import 'package:hotel_booking/components/ui/screens/Hotel%20details.dart';

class Hotel {
  final String name;
  final String location;
  final double price;
  final double rating;
  final String imageUrl;
  final bool isFavorite;
  final List<String> photoimageUrls;

  Hotel(this.name, this.location, this.price, this.rating, this.imageUrl, this.photoimageUrls,
      {this.isFavorite = false});
}

class HomeScreen extends StatelessWidget {
  final List<Hotel> popularHotels = [
    Hotel(
      "Elysium Gardens",
      "London, England",
      1500,
      4.5,
      "https://images.unsplash.com/photo-1561383818-ca5eee8c1d06?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8aG90ZWx8ZW58MHx8MHx8fDA%3D",
      [
    'https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww',
    'https://plus.unsplash.com/premium_photo-1661929519129-7a76946c1d38?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGhvdGVsfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1582719508461-905c673771fd',
    'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
      ]
    ),
    Hotel(
      "Nexon Suites",
      "Paris, France",
      200,
      4.0,
      "https://images.unsplash.com/photo-1678912128919-b69e9e855c00?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODJ8fGhvdGVsfGVufDB8fDB8fHww",
      [
           'https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww',
    'https://plus.unsplash.com/premium_photo-1661929519129-7a76946c1d38?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGhvdGVsfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1582719508461-905c673771fd',
    'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
      ]
    ),
        Hotel(
      "Nexon Suites",
      "Paris, France",
      200,
      4.0,
      "https://images.unsplash.com/photo-1546519393-754ec8cafd47?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTF8fGhvdGVsJTIwdG93ZXJ8ZW58MHx8MHx8fDA%3D",
      [   'https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww',
    'https://plus.unsplash.com/premium_photo-1661929519129-7a76946c1d38?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGhvdGVsfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1582719508461-905c673771fd',
    'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',]
    ),
        Hotel(
      "Nexon Suites",
      "Paris, France",
      200,
      4.0,
      "https://images.unsplash.com/photo-1711743266323-5badf42d4797?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fGhvdGVsJTIwdG93ZXJ8ZW58MHx8MHx8fDA%3D",
      [
           'https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww',
    'https://plus.unsplash.com/premium_photo-1661929519129-7a76946c1d38?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGhvdGVsfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1582719508461-905c673771fd',
    'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
      ]
    ),
  ];

  final List<Hotel> offerList = [
    Hotel(
      "Solara Springs",
      "Paris, France",
      349.7,
      4.3,
      "https://images.unsplash.com/photo-1704316417626-d21b6c0785d0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODN8fGhvdGVsfGVufDB8fDB8fHww",
      [
            'https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww',
    'https://plus.unsplash.com/premium_photo-1661929519129-7a76946c1d38?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGhvdGVsfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1582719508461-905c673771fd',
    'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',

      ]
    ),
    Hotel(
      "Horizon Crest",
      "Rome, Italy",
      1500,
      4.2,
      "https://images.unsplash.com/photo-1646813683338-5cc48d39e1f6?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE2fHxob3RlbHxlbnwwfHwwfHx8MA%3D%3D",
      [
            'https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww',
    'https://plus.unsplash.com/premium_photo-1661929519129-7a76946c1d38?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGhvdGVsfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1582719508461-905c673771fd',
    'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
      ],
      isFavorite: true,
    ),
        Hotel(
      "Horizon Crest",
      "Rome, Italy",
      1500,
      4.2,
      "https://plus.unsplash.com/premium_photo-1681429766562-fffa63d382c2?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGhvdGVsJTIwdG93ZXJ8ZW58MHx8MHx8fDA%3D",
      [
            'https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww',
    'https://plus.unsplash.com/premium_photo-1661929519129-7a76946c1d38?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGhvdGVsfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1582719508461-905c673771fd',
    'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
      ],
      //isFavorite: true,
    ),
        Hotel(
      "Horizon Crest",
      "Rome, Italy",
      1500,
      4.2,
      "https://images.unsplash.com/photo-1642202545168-6dbdca6b204f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGhvdGVsJTIwdG93ZXJ8ZW58MHx8MHx8fDA%3D",
      [
            'https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww',
    'https://plus.unsplash.com/premium_photo-1661929519129-7a76946c1d38?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGhvdGVsfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1582719508461-905c673771fd',
    'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
      ],
      //isFavorite: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://randomuser.me/api/portraits/men/1.jpg',
          ),
          radius: 25,
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Find events near",
                style: TextStyle(color: Colors.grey)),
            Text(
              "California, USA",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    ),
    // Notification icon with circular container and badge
    Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Icon(
            Icons.notifications_none_outlined, 
            size: 24,
            color: Colors.grey[700],
          ),
        ),
        // Notification badge
        Positioned(
          right: -2,
          top: -2,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  ],
),
            SizedBox(height: 30),
            _sectionHeader("Popular Hotel"),
            SizedBox(height: 10),
            _horizontalHotelList(popularHotels, context),
            SizedBox(height: 5),
            _sectionHeader("Your Offer List"),
            SizedBox(height: 10),
            _verticalOfferList(offerList, context),
          ],
        ),
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text("View All", style: TextStyle(color: Colors.blue)),
      ],
    );
  }

  Widget _horizontalHotelList(List<Hotel> hotels, BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          final hotel = hotels[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HotelDetailScreen(hotel: hotel),
                ),
              );
            },
            child: Container(
              width: 190,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                        child: Image.network(
                          hotel.imageUrl,
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 8,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star, size: 14, color: Colors.orange),
                              SizedBox(width: 3),
                              Text(hotel.rating.toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(hotel.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14)),
                        SizedBox(height: 12),
                        Text(hotel.location,
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$${hotel.price.toStringAsFixed(0)} / night",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Icon(Icons.favorite_border, size: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _verticalOfferList(List<Hotel> hotels, BuildContext context) {
    return Column(
      children: hotels.map((hotel) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HotelDetailScreen(hotel: hotel),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 8,
                    spreadRadius: 4)
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    hotel.imageUrl,
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(hotel.name,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      Text(hotel.location,
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      SizedBox(height: 5),
                      Text("\$${hotel.price} / month",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, size: 18, color: Colors.orange),
                        SizedBox(width: 2,),
                        Text(hotel.rating.toString(),style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    
                    SizedBox(height: 30),
                    Icon(
                      hotel.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: hotel.isFavorite ? Colors.red : Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}