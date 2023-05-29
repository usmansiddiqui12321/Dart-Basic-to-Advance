//Named Parameter
//matlab jab function call kren tw name aye k ye enter krna h
void main(List<String> args) {
  info(name:"Mani" , age: 33 );
  //jab function call kr rhy tw name or age ka option arha h 
}
void info({required String name, int? age}) {
  print("${name}  ${age}");
}
