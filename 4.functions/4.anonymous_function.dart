//Anonymous Function is Stored in variable 
void main(List<String> args) {
  final msg = (String name) {
    print('Hello ${name}');
  };
  msg('Usman');
}
