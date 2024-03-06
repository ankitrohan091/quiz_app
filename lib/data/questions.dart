import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestion('What are the main building blocks of Flutter UIs',
      ['Widget', 'Components', 'Blocks', 'Function']),
  QuizQuestion('What/s the purpose of StatefulWidget? ', [
    'Update UI as data changes',
    'Ignore data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on UI'
  ]),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
      'Which Widget should you try to use more often: StatelessWidget or StatefulWidget?',
      [
        'StatelessWidget',
        'StatefulWidget',
        'Both are equally good',
        'None of the above'
      ]),
  QuizQuestion('What happens if you change data in a StatelessWidget?', [
    'The UI is not updated',
    'The UI is updated',
    'The closest StatefulWidget is updated',
    'Any nested StatefulWidgets are updated',
  ]),
  QuizQuestion('How should you update data inside of StatefulWidgets?', [
    'By calling setState()',
    'By calling updateData()',
    'By calling updateUI()',
    'By calling updateState()',
  ]),
  QuizQuestion(
      'Which programming language is primarily used for Flutter development?', [
    'Dart',
    'Java',
    'Swift',
    'Python',
  ]),
  QuizQuestion(
      'What is the primary function of the \'setState()\' method in Flutter?', [
    'To rebuild the widget tree when its state changes',
    'To initialize the state of a widget',
    'To create a new widget instance',
    'To define the layout of the widget',
  ]),
  QuizQuestion(
      'What is the purpose of the \'pubspec.yaml\' file in a Flutter project?',
      [
        'To define the project\'s dependencies and metadata',
        'To write the main application code',
        'To configure the IDE settings',
        'To specify the project\'s design guidelines',
      ]),
  QuizQuestion(
      'Which widget in Flutter is used to create a scrolling list of widgets?',
      [
        'ListView',
        'Column',
        'GridView',
        'Row',
      ]),
  QuizQuestion(
      'What is the purpose of the MaterialApp widget in a Flutter app?', [
    'To define the application\'s material design theme',
    'To create a new material design app',
    'To handle navigation and routing',
    'To manage app localization',
  ]),
  QuizQuestion('Which Flutter widget is used to create a button?', [
    'RaisedButton',
    'Container',
    'Text',
    'Scaffold',
  ]),
  QuizQuestion(
      'What is the purpose of the \'flutter run\' command in the Flutter SDK?',
      [
        'To compile and run the Flutter project on an attached device or emulator',
        'To create a new Flutter project',
        'To run unit tests for the Flutter project',
        'To build the Flutter project for release',
      ]),
  QuizQuestion('In Flutter, what does the \'hot reload\' feature do?', [
    'Rebuilds the widget tree without losing the app\'s state',
    'Reloads the entire application',
    'Compiles the Dart code into machine code',
    'Initializes the debugging environment',
  ]),
  QuizQuestion(
      'Which widget in Flutter is used to display a modal bottom sheet?', [
    'BottomSheet',
    'ModalSheet',
    'BottomModal',
    'ModalBottom',
  ]),
  QuizQuestion('What is the purpose of the \'Flutter Inspector\' tool?', [
    'To debug layout issues and view the widget hierarchy',
    'To generate code snippets for common Flutter widgets',
    'To optimize app performance',
    'To automate UI testing',
  ]),
  QuizQuestion(
      'Which widget in Flutter is used to display a list of items with a fixed number of children?',
      [
        'ListView',
        'GridView',
        'Column',
        'Row',
      ]),
  QuizQuestion('What is the purpose of the \'async\' keyword in Dart?', [
    'To mark a function as asynchronous, allowing it to use the \'await\' keyword',
    'To declare a function as a generator',
    'To specify that a function has no return value',
    'To indicate that a function cannot be overridden',
  ]),
  QuizQuestion(
      'Which package in Flutter is commonly used for state management?', [
    'provider',
    'http',
    'shared_preferences',
    'sqflite',
  ]),
  QuizQuestion(
      'What is the primary function of the \'BuildContext\' parameter in Flutter widgets?',
      [
        'To provide access to information about the widget\'s location in the widget tree',
        'To define the layout of the widget',
        'To initialize the state of a widget',
        'To rebuild the widget tree when its state changes',
      ]),
  QuizQuestion(
      'Which command is used to create a new Flutter project from the command line?',
      [
        'flutter create',
        'flutter new',
        'flutter init',
        'flutter start',
      ]),
  QuizQuestion('What is the purpose of the \'Expanded\' widget in Flutter?', [
    'To force its child to fill the available space in the parent widget',
    'To provide padding around its child',
    'To align its child within the parent widget',
    'To apply a transformation to its child',
  ]),
  QuizQuestion(
      'What does the \'crossAxisAlignment\' property in a Row or Column widget control?',
      [
        'The alignment of the children perpendicular to the main axis',
        'The alignment of the children along the main axis',
        'The spacing between the children along the main axis',
        'The spacing between the children perpendicular to the main axis',
      ]),
  QuizQuestion('What is the purpose of the \'Spacer\' widget in Flutter?', [
    'To create flexible space within a Row or Column',
    'To add padding around its child',
    'To center its child within the parent widget',
    'To apply a transformation to its child',
  ]),
  QuizQuestion('What is the purpose of the \'SafeArea\' widget in Flutter?', [
    'To ensure that its child is positioned within the safe area of the device screen',
    'To provide padding around its child',
    'To center its child within the parent widget',
    'To apply a transformation to its child',
  ]),
  QuizQuestion(
      'What is the primary function of the \'Navigator\' widget in Flutter?', [
    'To manage the navigation stack and switch between different screens',
    'To create a new material design app',
    'To handle HTTP requests',
    'To manage app localization',
  ]),
];
