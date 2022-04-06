

class Tiempo {
   late DateTime today = DateTime.now();
}

String Buenas3(Tiempo()) {
  final bd = 08;
  final bt = 14;
  final bn = 19;
  final time = Tiempo();
  final ahora = Tiempo().today.hour;
  //Buendos días / desde
  int bdd = 6;
  //Buendos días / hasta
  int bdh = 12;

  //Buenas tardes / desde
  int btd = 12;
  //Buenas tardes / hasta
  int bth = 19;

  //Buenas noches / desde
  int bnd = 19;
  //Buenas noches / hasta
  int bnh = 00;

  if (ahora >= bdd && ahora < bdh) {
    return "Buenos días";
  } else if (ahora >= btd && ahora < bth) {
    return "Buenas tardes";
  } else if (ahora >= bnd && ahora < bnh) {
    return "Buenas noches";
  } else {
    return "Estamos de madrugada";
  }
}