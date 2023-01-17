import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_1701/controller/kurs_controller.dart';
import '../model/model.dart';

class ListeKurseScreen extends StatelessWidget {
  KursController _controller = Get.find();

  ListeKurseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Model _model = _controller.model.value;
    List<Kurs> _kurse = _model.kurse;
    return Scaffold(
        body: Column(
      children: [
        Container(
          // Überschrift
          child: Text("Liste der Kurse"),
        ),
        Expanded(
          child: Obx(
            () => ListView.builder(
              itemCount: _controller.model.value.kurse.length,
              //itemCount: 10,
              itemBuilder: (context, index) {
                return _buildEntry(
                  index,
                  title: _controller.model.value.kurse[index].name,
                );
              },
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Kurs k = Kurs(
                name: "Jodelkurs",
                anzahl: 20,
                beschreibung: "2 Futur, Morgendämmerung",
                dozent: "Dr. von Bülow",
                id: "JD101",
              );
              _controller.addKurs(k);
            },
            child: Text("add"))
      ],
    ));
  }

  Padding _buildEntry(int index, {required String title}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
          title: Text(title),
          subtitle: Text("Subtitle"),
          leading: Text("L"),
          trailing: ElevatedButton(
            onPressed: () {
              //_controller.model.value.kurse[index].name = "Flutterkurs";
              _controller.setKurseName(index, "Flutterkurs");
            },
            child: Text("T"),
          )),
    );
  }
}
