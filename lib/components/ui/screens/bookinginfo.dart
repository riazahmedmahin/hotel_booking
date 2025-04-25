import 'package:flutter/material.dart';
import 'package:hotel_booking/components/ui/screens/Homescreen.dart';
import 'package:hotel_booking/components/ui/utility/app_color.dart';
import 'package:hotel_booking/components/ui/widgets/custome_bottom.dart';

class BookingInfoScreen extends StatefulWidget {
  final hotel;
  const BookingInfoScreen({super.key, required this.hotel});

  @override
  State<BookingInfoScreen> createState() => _BookingInfoScreenState();
}

class _BookingInfoScreenState extends State<BookingInfoScreen> {
  // Room types for dropdown
  final List<String> roomTypes = ['Economy', 'Standard', 'VIP'];
  String? selectedRoomType; // Start with no selection to show hint
  TextEditingController checkInController = TextEditingController();
  TextEditingController checkOutController = TextEditingController();
  TextEditingController personController = TextEditingController();
TextEditingController roomController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();


  @override
  void dispose() {
    checkInController.dispose();
    checkOutController.dispose();
    personController.dispose();
    roomController.dispose();
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Info"),
        backgroundColor: const Color(0xFFF4F7FD),
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFF4F7FD),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hotel info card
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
                        widget.hotel.imageUrl,
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
                            widget.hotel.name,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.hotel.location,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "\$${widget.hotel.price} / month",
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
                              widget.hotel.rating.toString(),
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
              
              // Date picker fields
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      readOnly: true,
                      onTap: () => _selectDate(context, isCheckIn: true),
                      decoration: InputDecoration(
                        hintText: 'Check-in',
                        prefixIcon: const Icon(Icons.calendar_month),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      controller: checkInController,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      readOnly: true,
                      onTap: () => _selectDate(context, isCheckIn: false),
                      decoration: InputDecoration(
                        hintText: 'Check-out',
                        prefixIcon: const Icon(Icons.calendar_month),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      controller: checkOutController,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Person and Room dropdown
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: personController,
                      decoration: InputDecoration(
                        
                        hintText: "Person",
                        prefixIcon: const Icon(Icons.person_2_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      
                    ),
                  ),
                  const SizedBox(width: 10),
                    Expanded(
                    child: TextField(
                      controller: roomController,
                      decoration: InputDecoration(
                        hintText: "Room",
                        prefixIcon: const Icon(Icons.home_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
              
                ],
              ),
              SizedBox(height: 15,),
                  DropdownButtonFormField<String>(
                    value: selectedRoomType,
                    decoration: InputDecoration(
                      hintText: "Room Type",
                      prefixIcon: const Icon(Icons.home_filled),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    items: roomTypes.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style: TextStyle(
                          fontWeight: FontWeight.normal
                        ),),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedRoomType = newValue;
                      });
                    },
                    validator: (value) => 
                        value == null ? 'Please select room type' : null,
                  ),
              // Guest information
              const SizedBox(height: 20),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Guest Name",
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 15),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Guest Email",
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              
              const Spacer(),
              CustomButton(
                onPressed: () 
                {
                  Navigator.pushNamed(context, '/Bookingsummary');
                },
                text: "Confirm",
                color: AppColors.primaryColor,
                txtcolor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

Future<void> _selectDate(BuildContext context, {required bool isCheckIn}) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime(2100),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: AppColors.primaryColor, // Header background color
            onPrimary: Colors.white, // Header text color
            onSurface: Colors.black, // Body text color
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: AppColors.primaryColor, // Button text color
            ),
          ),
          dialogTheme: DialogTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),
        child: child!,
      );
    },
  );

  if (picked != null) {
    setState(() {
      final formattedDate = "${picked.day}/${picked.month}/${picked.year}";
      if (isCheckIn) {
        checkInController.text = formattedDate;
      } else {
        checkOutController.text = formattedDate;
      }
    });
  }
}

}