import 'Cattle.dart';

class cow extends Cattle {
  cow({required super.id});
  @override
  addCost(double amount) {
    // TODO: implement addCost
    return super.addCost(amount * 1.02);
  }
}
