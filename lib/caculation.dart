double number;
String e2m(String input) {
  const english = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
  ];
  const myanmar = [
    "၀",
    "၁",
    "၂",
    "၃",
    "၄",
    "၅",
    "၆",
    "၇",
    "၈",
    "၉",
  ];

  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(myanmar[i], english[i]);
  }
  return input;
}

String m2e(String input) {
  const english = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
  ];
  const myanmar = [
    "၀",
    "၁",
    "၂",
    "၃",
    "၄",
    "၅",
    "၆",
    "၇",
    "၈",
    "၉",
  ];

  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(english[i], myanmar[i]);
  }
  return input;
}

void setNumber(double num) {
  number = num;
}

String getNumber() {
  return number.toString();
}
