import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meeting/pages/pendingMeetingRequest.dart';

class roomAvailableCheck extends StatefulWidget {
  const roomAvailableCheck({super.key});

  @override
  State<roomAvailableCheck> createState() => _roomAvailableCheckState();
}

class _roomAvailableCheckState extends State<roomAvailableCheck> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => pendingRequest()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "Wait \n Checking for Room ..? ",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Icon(
              Icons.event_available_sharp,
              size: 100,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("◀️"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("▶️"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
