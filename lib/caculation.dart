import 'package:math_expressions/math_expressions.dart';

Map<String, String> m2e = {
  "၀": "0",
  "၁": "1",
  "၂": "2",
  "၃": "3",
  "၄": "4",
  "၅": "5",
  "၆": "6",
  "၇": "7",
  "၈": "8",
  "၉": "9",
};

Map<String, String> e2m = {
  "0": "၀",
  "1": "၁",
  "2": "၂",
  "3": "၃",
  "4": "၄",
  "5": "၅",
  "6": "၆",
  "7": "၇",
  "8": "၈",
  "9": "၉",
};

void evaluateEquation(String equation) {
  Parser p = Parser();
  Expression exp = p.parse("$equation");
  print(exp);
}
