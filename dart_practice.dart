import "dart:math";

void main() {
  simpleInterest(principal: 100, time: 15, rate: 9);
  addNumberInString("sjhas6kahs3kj3kj5klk7");
  searchList(30);
  factorial(0);
  reverser(["Shahid", "Noor", "One"]);
  rockPaperScissor("scissors");
  currentTime(10);
}

void simpleInterest({
  required int principal,
  required int time,
  required double rate,
}) {
  print("\n\nSIMPLE INTEREST\n----------------");
  double interest = principal * time * rate / 100;
  print(interest);
}

void addNumberInString(String val) {
  print("\n\naADD NUMBER IN STRING\n----------------");
  int sum = 0;
  for (int i = 0; i < val.length; i++) {
    try {
      sum += int.parse(val[i]);
    } catch (err) {
      continue;
    }
  }
  print(sum);
}

void searchList(int roll) {
  print("\n\nSEARCH IN LIST\n----------------");
  List<int> passedRolls = [
    1,
    2,
    3,
    5,
    6,
    9,
    11,
    12,
    13,
    14,
    15,
    16,
    18,
    19,
    22,
    25,
    26,
    28,
    29,
  ];
  //   bool found = false;
  int ind = passedRolls.indexOf(roll);
  /* for (int i = 0; i < passedRolls.length; i++) {
    if (passedRolls[i] == roll) {
      found = true;
      break;
    }
  } */
  print("The roll number $roll is ${ind > -1 ? 'passed' : 'failed'}");
}

void factorial(int num) {
  print("\n\nFACTORIAL\n----------------");
  int factorial = num == 0 ? 1 : num;
  for (int i = 1; i < num; i++) {
    factorial *= i;
  }
  print("The factorial of $num is $factorial");
}

void reverser(List<String> list) {
  print("\n\nREVERSE\n----------------");
  List<String> reversed = [];

  list.forEach((item) {
    var chars = item.split('');
    //   return chars.reversed.join();
    reversed.add(chars.reversed.join());
  });

  print("Input: $list \nOutput: $reversed");
}

void rockPaperScissor(String userInput) {
  print("\n\nROCK-PAPER-SCISSORS Game\n----------------");
  Map<String, String> rules = {
    "rock": "paper",
    "scissors": "rock",
    "paper": "scissors",
  };

  List<String> options = ["rock", "paper", "scissors"];

  Random random = Random(); // Create a Random object
  // Generates a random integer from 0 up to (but not including) 3
  int randomNumber = random.nextInt(3);
  String compInput = options[randomNumber];

  //   print("You: $userInput");
  //   print("Computer: $compInput");

  // Game logic
  if (!options.contains(userInput)) {
    print("Incorrect choice");
  } else if (userInput == compInput) {
    print("We have a tie!");
  } else if (rules[userInput] == compInput) {
    print("Computer Wins\n\nYou: $userInput\nComputer: $compInput");
  } else if (rules[compInput] == userInput) {
    print("You Wins\n\nYou: $userInput\nComputer: $compInput");
  }
}

void currentTime(int delay) async {
  print("\n\nDELAYED TIME\n----------------");
  DateTime dateTime = DateTime.now();
  String currTime = "${dateTime.hour}:${dateTime.minute}:${dateTime.second}";

  await Future.delayed(Duration(seconds: delay), () {
    print("Time $delay second ago was $currTime");
  });
}
