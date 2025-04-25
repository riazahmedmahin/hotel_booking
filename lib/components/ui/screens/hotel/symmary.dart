import 'package:flutter/material.dart';
import 'package:hotel_booking/components/ui/screens/homescreen.dart';

class BookingSummaryScreen extends StatelessWidget {
  final  hotel;
  final String checkIn;
  final String checkOut;
  final String guestName;
  final String guestEmail;
  final String? roomType;

  const BookingSummaryScreen({
    super.key,
    required this.hotel,
    required this.checkIn,
    required this.checkOut,
    required this.guestName,
    required this.guestEmail,
    required this.roomType,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Summary'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFF4F7FD),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Text(hote.name, style: TextStyle(fontSize: 16)),
           // Text("Location: ${hotel.location}", style: TextStyle(fontSize: 16)),
            Text("Check-in: $checkIn", style: TextStyle(fontSize: 16)),
            Text("Check-out: $checkOut", style: TextStyle(fontSize: 16)),
            Text("Room Type: $roomType", style: TextStyle(fontSize: 16)),
            Text("Guest Name: $guestName", style: TextStyle(fontSize: 16)),
            Text("Guest Email: $guestEmail", style: TextStyle(fontSize: 16)),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Do final confirmation here
                },
                child: Text("Complete Booking"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
