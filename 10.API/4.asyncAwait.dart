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

void main(List<String> args) async {
  print("Fetching User Profile");
  // fetchUserName()
  //     .then((value) => print('Then name of user is ${value['name']}'))
  //     .catchError((error) => print("Something went Wrong, ${error.toString()}"))
  //     .whenComplete(() => fetchOtherData()
  //         .then((value) => print(value))
  //         .catchError((onError) => print(onError))
  //         .whenComplete(
  //             () => print("Both Future Functions completed"))); //! messy code
  
  
  //* Much More Clean way
  try {
    final username = await fetchUserName();
    print("The name of user is ${username['name']}");
    final otherData = await fetchOtherData();
    print(otherData);
  } catch (e) {
    print(e);
  } finally {
    print("Both Future Functions have been Executed");
  }
}
