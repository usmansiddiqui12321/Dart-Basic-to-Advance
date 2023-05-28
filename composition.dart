//gather two or more classes and wrap them into One
abstract class Widget {}

class Image extends Widget {
  String url;
  Image({required this.url});
  @override
  String toString() {
    return url;
  }
}

class Text extends Widget {
  String text;
  Text({required this.text});
  @override
  String toString() {
    return text;
  }
}

class Button extends Widget {
  Button({required this.id, required this.child, required this.onPress});
  final id;
  final Widget child; // Widget and Text can be use by this
  final void Function() onPress;
}

void printmsg() => print("This is a click Event");
void main(List<String> args) {
  final saveButton = Button(
    id: 1,
    child: Image(url: "www.google.com"),
    onPress: printmsg,
  );
  saveButton.onPress();
  print(saveButton.child.toString());
  final cancelButton = Button(
    id: 2,
    child: Text(text: "text"),
    onPress: printmsg,
  );
  cancelButton.onPress();
  print(cancelButton.child.toString());
}
