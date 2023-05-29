Future<Map<String, String>> fetchUserName() {
  return Future.delayed(
    Duration(seconds: 2),
    () {
      return {'name': "Ali"};
    },
  );
}

Future<String> fetchOtherData() {
  return Future.delayed(
    Duration(seconds: 2),
    () => "This is From Other API",
  );
}

void main(List<String> args) {
  print("Fetching User Profile");
//The Code is being Messy
//we will solve this issue with async await
  fetchUserName()
      .then((value) => print('Then name of user is ${value['name']}'))
      .catchError((error) => print("Something went Wrong, ${error.toString()}"))
      .whenComplete(() => fetchOtherData()
          .then((value) => print(value))
          .catchError((onError) => print(onError))
          .whenComplete(
              () => print("Both Future Functions completed"))); //messy code
}
