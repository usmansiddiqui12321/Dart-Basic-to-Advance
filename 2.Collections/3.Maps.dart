void main(List<String> args) {
  //For Specific Type Of Mapping
 final Map<String , dynamic> mymap = {
    "firstname": "Muhammad Usman",
    "lastname": "Siddiqui",
    "age": 40, 
  };
  mymap['age'] = 51; // We Can Edit Our Map Until It is Constant
  //But if We Use final then it can change the value
  print(mymap['age']);
  //for my any Type Of Mapping
  var myobj = {
    "firstname": "Muhammad Usman",
    "lastname": "Siddiqui",
    "age": 40,
  };

  print(myobj['age']); // Print specific value
  print(myobj['gender']); // Print non-existent key (will print null)
  print(myobj.values); // Print all values
  myobj.forEach((key, value) {
    print(value);// Iterate over values and print each value
  });
  for (var value in myobj.values) {
    print(value); // Iterate over values and print each value
  }
  print(myobj.keys.toList()); //print Keys in to List
  print(myobj.values.toList());//print values in to List
  print(myobj.entries.toList());//print Entries in to List


  
}
