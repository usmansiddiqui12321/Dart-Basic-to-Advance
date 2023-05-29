class Arthimetic {
  void divide(int val1 , int val2){
    try {
        print(val1~/val2);

    } catch (e) {
      print("cannot divide by zero");
    }
    finally{
      print('haha'); // ye chly ga hi chaly ga
    }
  }
}
void main(List<String> args) {
  final arth = Arthimetic();
  arth.divide(50, 4);
}