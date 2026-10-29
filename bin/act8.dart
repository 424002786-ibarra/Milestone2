import 'dart:io';

// Check each score and count how many students passed or failed.
Map<String, int> checkScores(List<String> rawInputs) {
  int passedCount = 0;
  int failedCount = 0;

  // Check each score in the list.
  for (var scoreInput in rawInputs) {
    // Try to turn the input into a number so we can check the score.
    try {
      int score = int.parse(scoreInput.trim());

      if (score >= 75) {
        passedCount++;
        print('Score $score: Passed');
      } else {
        failedCount++;
        print('Score $score: Failed');
      }
    } catch (e) {
      // Show a message if the input is not a valid number.
      print(
        'Err wait, invalid input "$scoreInput"! please enter a valid number only.',
      );
    }
  }

  // Return both counts so main can display them.
  return {'passed': passedCount, 'failed': failedCount};
}

// Run sample scores, show the results, then let the user try their own.
void main() {
  print('=== Running hardcoded sample test ===\n');
  // Test with sample scores, including one invalid input.
  List<String> studentScores = ['85', '60', 'abc', '90', '74'];

  // Check the sample scores and save the counts.
  var summary = checkScores(studentScores);

  print('\n--- Summary Report ---');
  print(studentScores);
  print(
    'Total Passed: ${summary['passed']} | Total Failed: ${summary['failed']}',
  );

  // Let the user enter scores until they choose to exit.
  print('\n====================================');
  print('=== Interactive Input Section ===');
  print('Enter scores one by one to test (type "x" to exit):');

  while (true) {
    stdout.write('\nEnter a score (or "x" to exit): ');
    String? userInput = stdin.readLineSync();

    // Stop when the user types "x".
    if (userInput != null && userInput.trim().toLowerCase() == 'x') {
      print('Exiting interactive mode... Bye!');
      break;
    }

    // Check non-empty input, or ask the user to try again.
    if (userInput != null && userInput.trim().isNotEmpty) {
      checkScores([userInput]);
    } else {
      print('Input cannot be empty, try again!');
    }
  }
}
