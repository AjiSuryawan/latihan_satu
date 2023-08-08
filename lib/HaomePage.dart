import 'package:flutter/material.dart';

import 'Siswa.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Siswa>? siswa11PPLG2 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Siswa fadil = new Siswa("Fadil", "fadil@email.com");
    Siswa viko = new Siswa("Viko", "viko@email.com");
    Siswa fattah = new Siswa("Fattah", "fattah@email.com");
    Siswa barata = new Siswa("Barata Wijaya", "barata@email.com");
    siswa11PPLG2?.add(fadil);
    siswa11PPLG2?.add(viko);
    siswa11PPLG2?.add(fattah);
    siswa11PPLG2?.add(barata);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body: Center(
        child: Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: siswa11PPLG2?.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(siswa11PPLG2![index].name),
                      Text(siswa11PPLG2![index].email),
                    ],
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
