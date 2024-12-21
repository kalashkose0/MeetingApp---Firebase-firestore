import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:meeting/pages/pendingMeetingRequest.dart';
import 'package:meeting/pages/roomAvailableCheck.dart';
import 'package:meeting/uihelper/uihelper.dart';

class Meetinginfopage extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController userIdcontroller = TextEditingController();
  TextEditingController meetingIdcontroller = TextEditingController();
  TextEditingController roomIdcontroller = TextEditingController();
  TextEditingController statuscontroller = TextEditingController();
  TextEditingController durationcontroller = TextEditingController();
  TextEditingController dateTimecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Meeting"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This data will added to the Firestore, you can \n also add notes in further update.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              UiHelper.CustomTextField(
                  userIdcontroller,
                  TextInputType.emailAddress,
                  false,
                  "userID",
                  Icons.supervised_user_circle),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              UiHelper.CustomTextField(emailcontroller,
                  TextInputType.emailAddress, false, "Email", Icons.email),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Meeting Id",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              UiHelper.CustomTextField(
                  meetingIdcontroller,
                  TextInputType.emailAddress,
                  false,
                  "meetingId",
                  Icons.perm_identity_outlined),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Room Id",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              UiHelper.CustomTextField(
                  roomIdcontroller,
                  TextInputType.emailAddress,
                  false,
                  "RoomId",
                  Icons.room_outlined),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Status",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              UiHelper.CustomTextField(
                  statuscontroller,
                  TextInputType.emailAddress,
                  false,
                  "Pending / Available ",
                  Icons.signal_wifi_statusbar_4_bar_outlined),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Duration",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              UiHelper.CustomTextField(durationcontroller, TextInputType.number,
                  false, "duration", Icons.watch_later),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Date/Time",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              UiHelper.CustomTextField(
                  dateTimecontroller,
                  TextInputType.emailAddress,
                  false,
                  "Date/Time",
                  Icons.calendar_month_outlined),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  CollectionReference collRef =
                      FirebaseFirestore.instance.collection('meeting');
                  collRef.add({
                    'userId': userIdcontroller.text,
                    'email': emailcontroller.text,
                    'meetingId': meetingIdcontroller.text,
                    'roomId': roomIdcontroller.text,
                    'status': statuscontroller.text,
                    'duration': durationcontroller.text,
                    'date/time': dateTimecontroller.text,
                  });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Data Added to database"),
                    duration: Duration(seconds: 2),
                  ));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => roomAvailableCheck()));
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text("Book Meeting"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
