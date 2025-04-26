import 'package:flutter/material.dart';
import 'package:hotel_booking/components/ui/utility/app_color.dart';
import 'package:hotel_booking/components/ui/widgets/custome_bottom.dart';

class BookingSummaryScreen extends StatelessWidget {
  final hotel;
  final String checkInDate;
  final String checkOutDate;
  final String persons;
  final String rooms;
  final String roomType;
  final String guestName;
  final String guestEmail;

  const BookingSummaryScreen({
    Key? key,
    required this.hotel,
    required this.checkInDate,
    required this.checkOutDate,
    required this.persons,
    required this.rooms,
    required this.roomType,
    required this.guestName,
    required this.guestEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Summary'),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor:Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hotel Info
               Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 8,
                      spreadRadius: 4,
                    ),
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
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hotel.name,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            hotel.location,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "\$${hotel.price} / night",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.orange,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              hotel.rating.toString(),
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 45),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Booking Details
              Text("Room Details",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              buildSummaryItem("Check-In Date", checkInDate),
              buildSummaryItem("Check-Out Date", checkOutDate),
              Text("Guets details",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              buildSummaryItem("Persons", persons),
              buildSummaryItem("Rooms", rooms),
              buildSummaryItem("Room Type", roomType),
              buildSummaryItem("Guest Name", guestName),
              buildSummaryItem("Guest Email", guestEmail),
              
              CustomButton(onPressed: (){},
               text: "pay \$${hotel.price}",
                color: AppColors.primaryColor,
                 txtcolor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSummaryItem(String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        //border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Text(
            "$title: ",
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
