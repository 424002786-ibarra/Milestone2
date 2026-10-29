# Milestone 2 – Dart Activity // this is how you run it

## Introduction

This project contains Dart activities from Weeks 7–11. The `all_act.dart` file provides a menu that lets you select and run an activity without manually opening each Dart file.

## Requirements

- Dart SDK installed and configured in PATH
- Visual Studio Code (VS Code), optional
- The downloaded project ZIP file

## Step 1: Download and Extract the Project

1. Download the project ZIP file.
2. Open your Downloads folder.
3. Right-click the ZIP file and select **Extract All**.
4. Choose where to save the extracted folder.
5. Open the extracted project folder.

## Step 2: Locate the `bin` Folder

1. Open the extracted project folder.
2. Find and open the `bin` folder.
3. Locate `all_act.dart`.
4. Make sure the activity files (`act7.dart`, `act8.dart`, `act9.dart`, `act10.dart`, and `act11.dart`) are also in the `bin` folder.

**Important:** The current runner searches the directory from which it is launched. Keeping the runner and activity files together in `bin` ensures that it can find them.

## Step 3: Run Using Visual Studio Code

1. Open VS Code.
2. Select **File → Open Folder**.
3. Open the extracted project folder.
4. Open **Terminal → New Terminal**.
5. Enter this command to move into the `bin` folder:

   ```powershell
   cd bin
   ```

6. Run the activity runner:

   ```powershell
   dart run all_act.dart
   ```

7. Wait for the activity menu to appear.

## Step 4: Run Manually Using PowerShell

You can run the project without opening VS Code.

1. Open File Explorer and navigate to the extracted project folder.
2. Open the `bin` folder.
3. Click the address bar, type `powershell`, and press **Enter**.
4. Run the following command:

   ```powershell
   dart run all_act.dart
   ```

5. The activity menu should appear in PowerShell.

## Step 5: Select an Activity

The menu displays the following options:

```text
========== DART ACTIVITY RUNNER =========
7. Run Activity 7
8. Run Activity 8
9. Run Activity 9
10. Run Activity 10
11. Run Activity 11
0. Exit
========================================
Select an activity number:
```

Enter the number of the activity you want to run.

- `7` — Run Activity 7
- `8` — Run Activity 8
- `9` — Run Activity 9
- `10` — Run Activity 10
- `11` — Run Activity 11
- `0` — Exit the runner

After an activity finishes, you can select another activity from the menu.

## Troubleshooting

**Dart is not recognized:** Make sure the Dart SDK is installed and its `bin` directory is added to PATH.

**Activity file not found:** Check that the activity filenames start with `act7`, `act8`, `act9`, `act10`, or `act11`, and that the files are in the directory where the runner is searching.

**Program fails to run:** Check the Dart code for errors and make sure you are using the correct folder.

## Conclusion

The `all_act.dart` runner provides one menu for accessing the activities from Weeks 7–11. You can launch it through VS Code or PowerShell by navigating to the `bin` folder and running `dart run all_act.dart`.
