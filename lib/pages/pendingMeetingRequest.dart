import 'package:flutter/material.dart';
import 'package:meeting/pages/meetingInfoPage.dart';

class pendingRequest extends StatelessWidget {
  const pendingRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "Requested for Meeting",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Icon(
              Icons.private_connectivity_sharp,
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Meetinginfopage()));
                    },
                    child: Text("Back"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Wait ⌛"),
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
