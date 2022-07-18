import 'package:flutter/material.dart';
import 'package:travel_app_merchant/models/data_list_client.dart';
import 'package:travel_app_merchant/views/client/client_profile.dart';
import 'package:ionicons/ionicons.dart';

class Client extends StatefulWidget {
  const Client({Key? key}) : super(key: key);

  @override
  State<Client> createState() => _ClientState();
}

class _ClientState extends State<Client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Jama'ah",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                      Icon(Ionicons.funnel_outline)
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Ionicons.search_outline,
                          size: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Cari Riwayat"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Container Listview
            Container(
              margin: const EdgeInsets.only(top: 115),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final DataClient client = dataClient[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ClientDetail(
                              client: client,
                            );
                          }));
                        },
                        child: SizedBox(
                          height: 70,
                          child: Row(
                            children: [
                              CircleAvatar(
                                maxRadius: 17,
                                child: Image.asset(
                                  client.image,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                constraints: BoxConstraints(minWidth: 151),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      client.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      client.placeOfBirth +
                                          " - ${client.numRegistrasi}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //
                      //
                      Container(
                        constraints: BoxConstraints(minWidth: 105),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (client.document < 3)
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.red[400],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Text(
                                  "Data Kurang",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            if (client.document == 3)
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.green[400],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Text(
                                  "Data Lengkap",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
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
                                                leading: const Icon(
                                                    Ionicons.pencil_outline),
                                                title: const Text(
                                                  "Perbaharui Data Jama'ah",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                trailing: const Icon(
                                                  Ionicons
                                                      .chevron_forward_outline,
                                                  size: 16,
                                                ),
                                              ),
                                              ListTile(
                                                onTap: () {},
                                                leading: const Icon(
                                                    Ionicons.trash_outline),
                                                title: const Text(
                                                  "Hapus Data Jama'ah",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                trailing: const Icon(
                                                  Ionicons
                                                      .chevron_forward_outline,
                                                  size: 16,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () =>
                                                    Navigator.pop(context),
                                                child: Container(
                                                  margin:
                                                      EdgeInsets.only(top: 10),
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10),
                                                  width: 400,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue[100],
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(13),
                                                    ),
                                                  ),
                                                  child: Center(
                                                      child: Text("Batalkan")),
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
                              child: Icon(Ionicons.ellipsis_vertical_outline),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
                itemCount: dataClient.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
