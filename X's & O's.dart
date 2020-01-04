void main() {
  print(XO('XOxm'));
}

bool XO(String str) {
  int xCount = 0;
  int oCount = 0;
  String formattedStr = str.toUpperCase();
  formattedStr.split('').forEach((char) {
    char == 'X' ? xCount++ : char == 'O' ? oCount++ : null;
  });
  return xCount == oCount;
}
