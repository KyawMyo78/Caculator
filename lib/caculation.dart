toEng(String burmeseStr) {
  String engStr = '';
  engStr = burmeseStr.replaceAll(new RegExp(r'၀'), '0');
  engStr = engStr.replaceAll(new RegExp(r'၁'), '1');
  engStr = engStr.replaceAll(new RegExp(r'၂'), '2');
  engStr = engStr.replaceAll(new RegExp(r'၃'), '3');
  engStr = engStr.replaceAll(new RegExp(r'၄'), '4');
  engStr = engStr.replaceAll(new RegExp(r'၅'), '5');
  engStr = engStr.replaceAll(new RegExp(r'၆'), '6');
  engStr = engStr.replaceAll(new RegExp(r'၇'), '7');
  engStr = engStr.replaceAll(new RegExp(r'၈'), '8');
  engStr = engStr.replaceAll(new RegExp(r'၉'), '9');
  return engStr;
}

toMyanmar(String engStr) {
  String myanmarStr = '';
  myanmarStr = engStr.replaceAll(new RegExp(r'0'), '၀');
  myanmarStr = myanmarStr.replaceAll(new RegExp(r'1'), '၁');
  myanmarStr = myanmarStr.replaceAll(new RegExp(r'2'), '၂');
  myanmarStr = myanmarStr.replaceAll(new RegExp(r'3'), '၃');
  myanmarStr = myanmarStr.replaceAll(new RegExp(r'4'), '၄');
  myanmarStr = myanmarStr.replaceAll(new RegExp(r'5'), '၅');
  myanmarStr = myanmarStr.replaceAll(new RegExp(r'6'), '၆');
  myanmarStr = myanmarStr.replaceAll(new RegExp(r'7'), '၇');
  myanmarStr = myanmarStr.replaceAll(new RegExp(r'8'), '၈');
  myanmarStr = myanmarStr.replaceAll(new RegExp(r'9'), '၉');
  return myanmarStr;
}

double add(double num1, double num2) {
  double ans = num1 + num2;
  return ans;
}

double minus(double num1, double num2) {
  double ans = num1 - num2;
  return ans;
}

double multiply(double num1, double num2) {
  double ans = num1 * num2;
  return ans;
}

double divide(double num1, double num2) {
  double ans = num1 / num2;
  return ans;
}
