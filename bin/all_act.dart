import 'dart:io';

// Show the activity menu and run the selected Dart file in a separate process.
Future<void> main() async {
  while (true) {
    print('\n========== DART ACTIVITY RUNNER =========');
    print('7. Run Activity 7');
    print('8. Run Activity 8');
    print('9. Run Activity 9');
    print('10. Run Activity 10');
    print('11. Run Activity 11');
    print('0. Exit');
    print('========================================');

    stdout.write('Select an activity number: ');

    final input = stdin.readLineSync()?.trim();

    if (input == '0') {
      print('Exiting...');
      return;
    }

    if (!['7', '8', '9', '10', '11'].contains(input)) {
      print('Invalid choice. Please enter 7, 8, 9, 10, 11, or 0.');
      continue;
    }

    final prefix = 'act$input';
    final files = Directory.current
        .listSync()
        .whereType<File>()
        .where(
          (file) =>
              file.path.toLowerCase().endsWith('.dart') &&
              file.uri.pathSegments.last.toLowerCase().startsWith(prefix),
        )
        .toList();

    if (files.isEmpty) {
      print('Could not find a Dart file starting with "$prefix" in:');
      print(Directory.current.path);
      print('Put main.dart in the same folder as your activity files.');
      continue;
    }

    final selectedFile = files.first;
    print('\nRunning ${selectedFile.uri.pathSegments.last}...\n');

    final process = await Process.start(Platform.resolvedExecutable, [
      selectedFile.path,
    ], mode: ProcessStartMode.inheritStdio);

    final exitCode = await process.exitCode;
    print('\nActivity finished with exit code $exitCode.');
  }
}
