void main(List<String> args) {
  int salary = 4000;
  int? bonus;
  if (salary < 5000) {
    bonus = 4500;
  }
  bonus ??= 0; // this means if bonus is null then consider it zero
  print(salary + bonus);
}
