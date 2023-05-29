// Streams sy bhi data recieve kia jata h
// Series of async Events
// Constantly Listening
//example : messages , Games , news
//Streams ko iterable k zariye bhi kia ja skta h
void main(List<String> args) async {
  final stream = Stream.fromIterable([5, 4, 3, 2, 1]);
  print(stream);
  print(stream
      .toList()); // jab bhi instace of Future aye ga tw result k liye hum await lgayngy
  print(await stream.toList());
  // best practice

  stream.listen((event) {
    print(event);
  });
}
