import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Riwayat Kesehatan",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Dan Status Vaksinasi",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            //
            //
            //
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(
                  Radius.circular(13),
                ),
              ),
              child: ExpansionTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                collapsedIconColor: Colors.white,
                leading: Icon(
                  Ionicons.file_tray,
                  color: Colors.white,
                ),
                title: Text(
                  "Kesehatan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset("images/vaksin.png"),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset("images/vaksin.png"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.all(
                  Radius.circular(13),
                ),
              ),
              child: ExpansionTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                collapsedIconColor: Colors.white,
                leading: Icon(
                  Ionicons.file_tray,
                  color: Colors.white,
                ),
                title: Text(
                  "Riwayat Penyakit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset("images/vaksin.png"),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset("images/vaksin.png"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.amber[700],
                borderRadius: BorderRadius.all(
                  Radius.circular(13),
                ),
              ),
              child: ExpansionTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                collapsedIconColor: Colors.white,
                leading: Icon(
                  Ionicons.file_tray,
                  color: Colors.white,
                ),
                title: Text(
                  "Riwayat Alergi",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset("images/vaksin.png"),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset("images/vaksin.png"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green[600],
                borderRadius: BorderRadius.all(
                  Radius.circular(13),
                ),
              ),
              child: ExpansionTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                collapsedIconColor: Colors.white,
                leading: Icon(
                  Ionicons.file_tray,
                  color: Colors.white,
                ),
                title: Text(
                  "Vaksin Covid-19",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset("images/vaksin.png"),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset("images/vaksin.png"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: BorderRadius.all(
                  Radius.circular(13),
                ),
              ),
              child: ExpansionTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                collapsedIconColor: Colors.white,
                leading: Icon(
                  Ionicons.file_tray,
                  color: Colors.white,
                ),
                title: Text(
                  "Vaksin Miningitis",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset("images/vaksin.png"),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Image.asset("images/vaksin.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
