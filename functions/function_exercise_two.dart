//avg student age of different programs
//[
//{"name" : 'BBA Morning' , "studentAgeList" : [23,21,56,23,12,13]}
//{"name" : 'MBA Morning' , "studentAgeList" : [20,27,34,21,17.5,12]}
//{"name" : 'MBA Evening' , "studentAgeList" : []}
//]
void main(List<String> args) {
  List<Map> studentinfo = [
    {
      "name": 'BBA Morning',
      "studentAgeList": [23, 21, 56, 23, 12, 13]
    },
    {
      "name": 'MBA Morning',
      "studentAgeList": [20, 27, 34, 21, 17.5, 12]
    },
    {"name": 'MBA Evening', "studentAgeList": []}
  ];
  getallavg(studentinfo);
}

void getallavg(List<Map> info) {
  info.forEach((element) {
    double AvgAgeofstudent = getAverageAge(element['studentAgeList']);
    print('The Average age in ${element['name']} is ${AvgAgeofstudent}');
  });
}

double getAverageAge(List<dynamic> agelist) {
  if(agelist.length==0) { 
    return 0;
  }
  double totalage = 0;
  agelist.forEach((element) {
    totalage += element;
  });
  return double.parse((totalage / agelist.length).toStringAsFixed(2));
}
