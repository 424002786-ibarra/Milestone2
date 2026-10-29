// Add the scores and show the student's results.
void main() {
  String studentName = 'Ibarra, Andrew Kim';
  int quizScore = 25;
  double examScore = 74.5;
  bool passed = true;

  double totalScore = quizScore + examScore;   // arithmetic (+)
  bool isOver100 = totalScore > 100;           // comparison (>)

  print('Student: $studentName');
  print('Total Score: $totalScore');
  print('Is the total over 100? $isOver100');
  print('Passed? $passed');
}