//kisi bhi class ka blueprint hota h
//Encapsulation == Interfaces
class Add {
  double a = 0, b = 0;
  double add() {
    return a + b;
  }
}

abstract class Divide {
  double a = 0, b = 0;
  double divide() {
    return a / b;
  }
}

abstract class Subtract {
  double a = 0, b = 0;
  double sub();
}

abstract class Multiply {
  double a = 0, b = 0;
  double multiply();
}

class Arithmetic implements Add, Subtract, Multiply, Divide {
  //implements means apko sab kch define krna hoga
  //mtlb sab kch override hogya
  double a, b;
  Arithmetic({required this.a, required this.b});
  // interfaces uses implements becuase of extending multiple classes
  //it can be either abstract or normal class
  //but suitable yehi h k abstract class ho
  //or kch bhi function mn define na kia ho
  // q k usy bad mn bhi define krna pryga
  //jsy add() or divide() mn hua va
  //mgr nchy alag sy define krna pra
  //mtlb faida nhi hua
  @override
  double add() {
    return a + b;
  }

  @override
  double divide() {
    return a / b;
  }

  @override
  double multiply() {
    return a * b;
  }

  @override
  double sub() {
    return a - b;
  }
}

void main(List<String> args) {
  Arithmetic cal = Arithmetic(a: 1000, b: 5.6);
  print(cal.add());
  print(cal.divide());
  print(cal.multiply());
  print(cal.sub());
}
