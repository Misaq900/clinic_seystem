import 'package:clinic_management_doctor_appointment/booking_confirmation_screen.dart';
import 'package:clinic_management_doctor_appointment/booking_detail.dart';
import 'package:clinic_management_doctor_appointment/doctor.dart';
import 'package:clinic_management_doctor_appointment/doctor_profile_card.dart';
import 'package:flutter/material.dart';

class ReviewBookingScreen extends StatelessWidget {
  const ReviewBookingScreen(
      {super.key, required this.doctor, required this.bookingDetails});
  final Doctor doctor;
  final Map<String, dynamic> bookingDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Review Summary"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          DoctorProfileCard(doctor: doctor),
          BookingDetail(
            bookingDetails: bookingDetails,
          )
        ],
      ),
      bottomSheet: SizedBox(
        height: 60,
        child: BottomSheet(
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 10,
          onClosing: () {},
          builder: (context) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(
                              Colors.blueAccent.shade700)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              bookingDetails["doctor_name"] = doctor.name;
                              return BookingConfirmationScreen(
                                bookingDetails: bookingDetails,
                              );
                            },
                          ),
                        );
                      },
                      child: const Text("Confirm")),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
