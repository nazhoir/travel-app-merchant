import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel_app_merchant/models/data_list_client.dart';
import 'package:travel_app_merchant/views/client/client_medical_history.dart';

class ClientDetail extends StatelessWidget {
  const ClientDetail({Key? key, required this.client}) : super(key: key);
  final DataClient client;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Ionicons.arrow_back_outline, size: 20),
                  ),
                  Text(
                    "Profil Jama'ah",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Container
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                child: Column(
                                  children: [
                                    ListTile(
                                      onTap: () {},
                                      leading:
                                          const Icon(Ionicons.pencil_outline),
                                      title: const Text(
                                        "Perbaharui Data Jama'ah",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                      trailing: const Icon(
                                        Ionicons.chevron_forward_outline,
                                        size: 16,
                                      ),
                                    ),
                                    ListTile(
                                      onTap: () {},
                                      leading:
                                          const Icon(Ionicons.trash_outline),
                                      title: const Text(
                                        "Hapus Data Jama'ah",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                      trailing: const Icon(
                                        Ionicons.chevron_forward_outline,
                                        size: 16,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () => Navigator.pop(context),
                                      child: Container(
                                        margin: EdgeInsets.only(top: 10),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        width: 400,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[100],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(13),
                                          ),
                                        ),
                                        child: Center(child: Text("Batalkan")),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      Ionicons.ellipsis_vertical_outline,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      client.image,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          client.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Kode Registrasi : ${client.numRegistrasi}"),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Email : ${client.email}"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 45),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nomo Kartu Keluarga"),
                      Text(
                        "${client.numKK}",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nomor Induk Keluarga"),
                      Text(
                        "${client.numNIK}",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Jenis kelamin "),
                      Text(
                        client.gender,
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Status Pernikahan "),
                      Text(
                        client.maritalStatus,
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tempat Lahir"),
                      Text(
                        client.placeOfBirth,
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tanggal Lahir"),
                      Text(
                        client.dateOfBirth,
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nomor Telepon"),
                      Text(
                        "${client.numTlp}",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nomor Paspor"),
                      Text(
                        "${client.numPasport}",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tempat Terbit Paspor"),
                      Text(
                        client.pasportIssue,
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tanggal Terbit Paspor"),
                      Text(
                        "${client.pasportIssueDate}",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tanggal Kadaluarsa Paspor"),
                      Text(
                        "${client.pasportExperationDate}",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Waktu Registrasi"),
                      Text(
                        client.registrationTime,
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Status Vaksinasi Covid-19"),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Medical(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              "Lengkap",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Ionicons.open_outline,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Status Vaksinasi Miningitis"),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              "Lengkap",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Ionicons.open_outline,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Riwayat Penyakit"),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              "Ada",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Ionicons.open_outline,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Riwayat Alergi"),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              "Ada",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Ionicons.open_outline,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Ionicons.print_outline),
                          SizedBox(width: 10),
                          Text("Cetak Profil Jama'ah"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
