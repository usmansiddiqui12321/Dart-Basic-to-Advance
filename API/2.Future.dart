import '../functions/functionAsFirstClassObject.dart';

Future<void> fetchUserProfile() {
  return Future.delayed(
    Duration(seconds: 2),
    () {
      print("Hello world");
    },
  );
}

void main(List<String> args) {
  print("Hello World");
  fetchUserProfile()
      .then((value) => print("profilefetched")) //after fetchUser profile
      .onError((error, stackTrace) => print("error")) // on error what to act
      .whenComplete(
          () => print("Completed")); // when completed either error or not
  // print("profile Fetched");
}
