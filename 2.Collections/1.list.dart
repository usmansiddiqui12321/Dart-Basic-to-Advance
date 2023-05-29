

void main(List<String> args) {
  // Create a list
var list = [1, 2, 3, 4, 5];

// Print the list
print("The list is: $list");

// Get the length of the list
int length = list.length;

// Print the length of the list
print("The length of the list is $length");

// Add an element to the end of the list
list.add(6);

// Print the list
print("The list is now: $list");

// Remove the first element from the list
list.removeAt(0);

// Print the list
print("The list is now: $list");

// Get the element at a specific index
int element = list[2];

// Print the element at a specific index
print("The element at index 2 is $element");

// Set the element at a specific index
list[2] = 7;

// Print the list
print("The list is now: $list");

// Check if an element is in the list
bool isInList = list.contains(3);

// Print whether the element is in the list
print("The element 3 is in the list: $isInList");

// Sort the list
list.sort();

// Print the sorted list
print("The sorted list is: $list");

// Reverse the order of the list
var reverse_list = list.reversed;

// Print the reversed list
print("The reversed list is: $reverse_list");

// Iterate over the list
for (var element in list) {
  print("The element is: $element");
}

// Convert the list to a string
String listAsString = list.toString();

// Print the string representation of the list
print("The string representation of the list is: $listAsString");

// Convert the list to a JSON string
// String jsonString = list.tojson();

// Print the JSON representation of the list
// print("The JSON representation of the list is: $jsonString");

}