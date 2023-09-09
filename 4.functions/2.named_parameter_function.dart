//Named Parameter

void main(List<String> args) {
  info(name:"Mani" , age: 33 );
  //* When Ever We Call Function it will mention that Parameter 
  //* becuase of {}
}
void info({required String name, int? age}) {
  print("${name}  ${age}");
}
