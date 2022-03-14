class Tiempo {
  late DateTime today = DateTime.now();
}

class Buenas3 {
  var time Bd = 7:30:00
  var time Bt = 14:00:00
  var time Bn = 19:00:00
  if (today <= Bd ) {
    return text("Buenos días");
  } if else(today <= Bt) {
    return text("Buenas tardes");
  } else {
    return text("Buenas noches");
  }
}