import 'package:flutter/cupertino.dart';

class Tiempo {
   late DateTime today = DateTime.now();
}

class Buenas3 {
  final bd = 08;
  final bt = 14;
  final bn = 19;
  final time = Tiempo();
  final ahora = Tiempo().today.hour;

  void validacion(today, bd, bt, bn, ahora, time) {
   if (ahora >= bd && ahora < bt) {
      returnText('Buenos días');
    } else if (ahora >= bt && ahora < bn) {
      returnText('Buenas tardes');
    } else if (ahora >= bn && ahora < bd) {
      returnText('Buenas noches');
    } else {
      returnText('Estamos de madrugada');
    }
  }

  void returnText(String titulo) async {
    return const Text($titulo);
  }
}