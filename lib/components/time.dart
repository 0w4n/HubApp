class Tiempo {
   late DateTime today = DateTime.now();
}

class Buenas3 {
  var Bd = 08 as Tiempo;
  var Bt = 14;
  var Bn = 19;

  if (today == Bd )  {
    return "Buenos Días";
  } if else(today ==  Bt) {
    return "Buenas Tardes";
  } else {
    return "Buenas noches";
  }
}

