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

  Text validacion(today, bd, bt, bn, ahora, time) {
   if (ahora >= bd && ahora < bt) {
      return const Text('Buenos días',
                        style: TextStyle(
                            fontSize: 12)
                        );
    } else if (ahora >= bt && ahora < bn) {
      return const Text('Buenas tardes',
                        style: TextStyle(
                          fontSize: 12)
                        );
    } else if (ahora >= bn && ahora < bd) {
      return const Text('Buenas noches',
                        style: TextStyle(
                          fontSize: 12)
                        );
    } else {
      return const Text('Estamos de madrugada',
                        style: TextStyle(
                          fontSize: 12)
                        );
    }
  }
}