import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'HomePageController.dart';

class CalculateBMI extends StatefulWidget {
  const CalculateBMI({Key? key}) : super(key: key);

  @override
  State<CalculateBMI> createState() => _CalculateBMIState();
}

class _CalculateBMIState extends State<CalculateBMI> {
  final HomePageController controller = Get.put(HomePageController());
  late TextEditingController ctrBeratBadan;
  late TextEditingController ctrTinggiBadan;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ctrBeratBadan = new TextEditingController();
    ctrTinggiBadan = new TextEditingController();
  }

  Widget myText(
      String label, bool isObsecure, TextEditingController myController) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: myController,
        obscureText: isObsecure,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate BMI"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              myText("input berat", false, ctrBeratBadan),
              myText("input tinggi badan", false, ctrTinggiBadan),
              ElevatedButton(
                  onPressed: () => controller.calculateBMI(
                      double.parse(ctrBeratBadan.text),
                      double.parse(ctrTinggiBadan.text)),
                  child: Text("calculate")),
              Obx(
                () => Text(
                  "hasil BMI " + controller.hasilBMI.value.toStringAsFixed(2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
