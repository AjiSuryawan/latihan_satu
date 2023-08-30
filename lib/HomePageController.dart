import 'package:get/get.dart';

class HomePageController extends GetxController {
  final count = 0.obs;
  increment() => count.value++;
  decrecemnt(){
    count.value--;
  }

  final hasilBMI = RxDouble(0.0);
  calculateBMI(double beratBadan , double tinggiBadan){
    double calculateBMI = beratBadan / (tinggiBadan * tinggiBadan);
    hasilBMI.value = calculateBMI;
    print("hasil "+hasilBMI.value.toString());
  }
}