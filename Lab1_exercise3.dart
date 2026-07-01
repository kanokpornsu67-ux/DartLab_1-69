void main(){
  List<String> subject = ['Alogorithm', 'Machine', 
                          'Digital'];
  print('Number of Subject: ${subject.length}');
  print('First Subject: ${subject[0]}');
  print('Last Subject: ${subject[subject.length-1]}');
  subject.add('Mobile');
  print('Updated subjects: $subject');
  print('---');
  
  Map<String,int> studentScores = {'Alogorithm' : 70, 'Machine': 89
  };
  print('Score for Alogorithm :${studentScores['Alogorithm']}');
  
  studentScores['Digital'] = 90;
  print('Updated scores: $studentScores');
  print('All subject in map: ${studentScores.keys}');
  print('All scoress in map: ${studentScores.values}');
  
}