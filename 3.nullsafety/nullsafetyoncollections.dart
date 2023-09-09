void main(List<String> args) {
  List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];
  List<double?> dailysportshours = [1, 2, 3.5, 1.5, 2.5, 2.5, null];
  for (int i = 0; i < dailysportshours.length; i++) {
    print(
        "${days[i]} : ${dailysportshours[i]?.round()}"); // When we are Fetching Data
  } //*and we know that Data can be Null
  //*then we put '?' which explains
} //*that if data is null do not consider the stuff after '?'
