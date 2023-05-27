abstract class Animal {
  Animal({required this.id});
  String id;
  double _current_cost = 0;
  double _age = 0;

  addCost(double amount) => _current_cost += amount;
  getDetails();

  double get currentcost => _current_cost;
  double get age => _age;

  void set age(double age) => _age = age;
}




