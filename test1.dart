void main(){
  List<Map<String,dynamic>> students=[
    {"name": "Alice", "scores": [85, 90, 78]},
  {"name": "Bob", "scores": [88, 76, 95]},
  {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  Map<String,double> average={};

  for(var student in students){
    String name=student['name'];

    List<int>scores=List<int>.from(student['scores']);

    double avg = scores.reduce((a,b)=> a+b)/scores.length;

    average[name] = double.parse(avg.toStringAsFixed(2));
  }

  var sortedValues =average.entries.toList()
  ..sort((a,b)=> b.value.compareTo(a.value));

  Map<String ,double> sortedAverage={
    for(var values in sortedValues)
    values.key : values.value
  };

  print(sortedAverage);
}