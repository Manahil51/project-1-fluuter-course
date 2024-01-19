import 'dart:io';

List<Map<String, dynamic>> students = [
  {
    'name': 'ali',
    'age': 11,
    'Class': 6,
    'admission_year': 2021,
    'marks': 76,
    'email': 'ali123@gmail.com',
    'password': 'ali123',
    'feedback': '',
  },
  {
    'name': 'sara',
    'age': 12,
    'Class': 7,
    'admission_year': 2022,
    'marks': 64,
    'email': 'sara123@gmail.com',
    'password': 'sara123',
    'feedback': '',
  },
  {
    'name': 'ahmed',
    'age': 13,
    'Class': 8,
    'admission_year': 2023,
    'marks': 88,
    'email': 'ahmed123@gmail.com',
    'password': 'ahmed123',
    'feedback': '',
  },
  {
    'name': 'saad',
    'age': 11,
    'Class': 6,
    'admission_year': 2020,
    'marks': 56,
    'email': 'saad123@gmail.com',
    'password': 'saad123',
    'feedback': '',
  },
  {
    'name': 'amal',
    'age': 14,
    'Class': 9,
    'admission_year': 2019,
    'marks': 59,
    'email': 'amal123@gmail.com',
    'password': 'amal123',
    'feedback': '',
  },
];

class StudentManagement {}

void addStudent() {
  print('Add student details');
  stdout.write('Name: ');
  String name = stdin.readLineSync()!;
  stdout.write('Age: ');
  int age = int.parse(stdin.readLineSync()!);
  stdout.write('Class: ');
  int studentClass = int.parse(stdin.readLineSync()!);
  stdout.write('Admission year: ');
  int admissionYear = int.parse(stdin.readLineSync()!);
  stdout.write('Marks: ');
  int marks = int.parse(stdin.readLineSync()!);
  stdout.write('Email: ');
  String email = stdin.readLineSync()!;
  stdout.write('Password: ');
  String password = stdin.readLineSync()!;

  Map<String, dynamic> newStudent = {
    'name': name,
    'age': age,
    'Class': studentClass,
    'admission_year': admissionYear,
    'marks': marks,
    'email': email,
    'password': password,
    'feedback': '',
  };
  students.add(newStudent);
  print('Student added successfully!\n');
}

void searchStudent(String studentName) {
  var foundStudent =
      students.where((student) => student['name'] == studentName).toList();

  if (foundStudent.isEmpty) {
    print('Student not found');
  } else {
    print('Found student:');
    for (var student in foundStudent) {
      print(
          'Name: ${student['name']}, Age: ${student['age']}, Class: ${student['Class']}, Admission Year: ${student['admission_year']}, Marks: ${student['marks']}, Email: ${student['email']}, Password: ${student['password']}');
    }
  }
}

void foundStudentAge(int studentAge) {
  var foundAge =
      students.where((student) => student['age'] == studentAge).toList();

  if (foundAge.isEmpty) {
    print('No student with this age found');
  } else {
    print('Found student with the specified age:');
    for (var student in foundAge) {
      print(
          'Name: ${student['name']}, Age: ${student['age']}, Class: ${student['Class']}, Admission Year: ${student['admission_year']}, Marks: ${student['marks']}, Email: ${student['email']}, Password: ${student['password']}');
    }
  }
}

void foundStudentClass(int studentClass) {
  var foundClass =
      students.where((student) => student['Class'] == studentClass).toList();

  if (foundClass.isEmpty) {
    print('No student in this class found');
  } else {
    print('Found student in the specified class:');
    for (var student in foundClass) {
      print(
          'Name: ${student['name']}, Age: ${student['age']}, Class: ${student['Class']}, Admission Year: ${student['admission_year']}, Marks: ${student['marks']}, Email: ${student['email']}, Password: ${student['password']}');
    }
  }
}

void foundAdmissionYear(int admissionYear) {
  var foundAdmissionYear = students
      .where((student) => student['admission_year'] == admissionYear)
      .toList();

  if (foundAdmissionYear.isEmpty) {
    print('No student admitted in this year found');
  } else {
    print('Found student admitted in the specified year:');
    for (var student in foundAdmissionYear) {
      print(
          'Name: ${student['name']}, Age: ${student['age']}, Class: ${student['Class']}, Admission Year: ${student['admission_year']}, Marks: ${student['marks']}, Email: ${student['email']}, Password: ${student['password']}');
    }
  }
}

void getMarksByName(String studentName) {
  var foundStudent =
      students.where((student) => student['name'] == studentName).toList();

  if (foundStudent.isEmpty) {
    print('Student not found');
  } else {
    print('Marks for $studentName:');
    for (var student in foundStudent) {
      print('Marks: ${student['marks']}');
    }
  }
}

void calculatePercentageByName(String studentName) {
  var foundStudent =
      students.where((student) => student['name'] == studentName).toList();

  if (foundStudent.isEmpty) {
    print('Student not found');
  } else {
    for (var student in foundStudent) {
      stdout.write('Enter marks for ${student['name']}: ');
      int marks = int.parse(stdin.readLineSync()!);
      // Calculate percentage here if needed
    }
  }
}

void provideFeedback(String studentName) {
  var foundStudent =
      students.where((student) => student['name'] == studentName).toList();

  if (foundStudent.isEmpty) {
    print('Student not found');
  } else {
    for (var student in foundStudent) {
      stdout.write('Enter feedback for ${student['name']}: ');
      String feedback = stdin.readLineSync()!;
      student['feedback'] = feedback;
      print('Feedback recorded for $studentName\n');
    }
  }
}

void studentToUpdate() {
  print('Enter the name of the student to update');
  String nameToUpdate = stdin.readLineSync()!;
  var foundStudent =
      students.where((student) => student['name'] == nameToUpdate).toList();

  if (foundStudent.isEmpty) {
    print('Student not found');
  } else {
    var studentToUpdate = foundStudent.first;
    print('Enter new details for ${studentToUpdate['name']}:');
    stdout.write('New age: ');
    studentToUpdate['age'] = int.parse(stdin.readLineSync()!);
    stdout.write('New class: ');
    studentToUpdate['Class'] = int.parse(stdin.readLineSync()!);
    stdout.write('New admission year: ');
    studentToUpdate['admission_year'] = int.parse(stdin.readLineSync()!);
    print('Student updated successfully!\n');
  }
}

void studentToDelete() {
  print('Enter the name of the student to delete');
  String nameToDelete = stdin.readLineSync()!;
  students.removeWhere((student) => student['name'] == nameToDelete);
  print('Student deleted successfully');
}

void printStudentList() {
  print('Student List:');
  for (var student in students) {
    print(
        'Name: ${student['name']}, Age: ${student['age']}, Class: ${student['Class']}, Admission Year: ${student['admission_year']}, Marks: ${student['marks']}, Email: ${student['email']}, Password: ${student['password']}');
  }
}

void viewStudentDetail(String email, String password) {
  var foundStudent = students
      .where((student) =>
          student['email'] == email && student['password'] == password)
      .toList();
  if (foundStudent.isEmpty) {
    print('Invalid email and password, student not found.');
  } else {
    print('Student detail:');
    for (var student in foundStudent) {
      print(
          'Name: ${student['name']}, Age: ${student['age']}, Class: ${student['Class']}, Admission Year: ${student['admission_year']}, Marks: ${student['marks']}, Email: ${student['email']}, Password: ${student['password']}');
    }
  }
}

void calculatepercentage(String studentName) {
  var foundStudent =
      students.where((student) => student['name'] == studentName).toList();
  if (foundStudent.isEmpty) {
    print('student not foumd');
  } else {
    for (var student in foundStudent) {
      double percentage = (student['marks'] / 100) * 100;
      print('percentage for ${student['name']}: $percentage%');
    }
  }
}

void main() {
  stdout.write('Enter your Name: ');
  String name = stdin.readLineSync()!;
  print('Hey $name, welcome to the student management system');

  var studentManagement = StudentManagement();

  while (true) {
    print('\n1:Add student');
    print('2:  Search student by name');
    print('3:  Search students by age');
    print('4:  Search students by class');
    print('5:  Search students by admission year');
    print('6:  Update student');
    print('7:  Delete student');
    print('8:  View student list');
    print('9:  Give student feedback');
    print('10: Search student marks');
    print('11: View my details');
    print('12: view student percentage');
    print('13: Exit');

    stdout.write('Enter your choice: ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        addStudent();
        break;
      case '2':
        stdout.write('Enter student name to search: ');
        String name = stdin.readLineSync()!;
        searchStudent(name);
        break;
      case '3':
        stdout.write('Enter student age to search: ');
        int age = int.parse(stdin.readLineSync()!);
        foundStudentAge(age);
        break;
      case '4':
        stdout.write('Enter student class to search: ');
        int studentClass = int.parse(stdin.readLineSync()!);
        foundStudentClass(studentClass);
        break;
      case '5':
        stdout.write('Enter admission year to search: ');
        int admissionYear = int.parse(stdin.readLineSync()!);
        foundAdmissionYear(admissionYear);
        break;
      case '6':
        studentToUpdate();
        break;
      case '7':
        studentToDelete();
        break;
      case '8':
        printStudentList();
        break;
      case '9':
        stdout.write('Enter student name to give feedback: ');
        String nameToFeedback = stdin.readLineSync()!;
        provideFeedback(nameToFeedback);
        break;
      case '10':
        stdout.write('Enter student name to search marks: ');
        String nameToSearchMarks = stdin.readLineSync()!;
        getMarksByName(nameToSearchMarks);
        break;
      case '11':
        stdout.write('Enter your email: ');
        String myEmail = stdin.readLineSync()!;
        stdout.write('Enter your password: ');
        String myPassword = stdin.readLineSync()!;
        viewStudentDetail(myEmail, myPassword);
        break;
      case '12':
        stdout.write('Enter student name to search percentage: ');
        String nametoserachpercentage = stdin.readLineSync()!;
        calculatepercentage(nametoserachpercentage);
        break;
      case '13':
        exit(0);
        break;
      default:
        print('Invalid choice. Please enter a number between 1 and 12.\n');
    }
  }
}
