/// DESCRIPTION
/// Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

/// Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" spinWords( "This is a test") => returns "This is a test" spinWords( "This is another test" )=> returns "This is rehtona test"

/// SAMPLE TESTS
/* 
import "package:test/test.dart";
import "package:solution/solution.dart";

void main() {
  group("Fixed tests", () {
    test("Testing for Welcome", () {
      expect(spinWords("Welcome"), equals("emocleW"));
    });
    test("Testing for Hey fellow warriors", () {
      expect(spinWords("Hey fellow warriors"), equals("Hey wollef sroirraw"));
    });
    test("Testing for This is a test", () {
      expect(spinWords("This is a test"), equals("This is a test"));
    });
    test("Testing for This is another test", () {
      expect(spinWords("This is another test"), equals("This is rehtona test"));
    });
    test("Testing for You are almost to the last test", () {
      expect(spinWords("You are almost to the last test"), equals("You are tsomla to the last test"));
    });
    test("Testing for Just kidding there is still one more", () {
      expect(spinWords("Just kidding there is still one more"), equals("Just gniddik ereht is llits one more"));
    });
    test("Testing for Seriously this is the last one", () {
      expect(spinWords("Seriously this is the last one"), equals("ylsuoireS this is the last one"));
    });
  });
}
*/

void main() {
  print(spinWords('Testing for Hey fellow warriors'));
}

String spinWords(String str) {
  List<String> strArr = str.split(' ');
  String finalString = '';
  for (var i = 0; i < strArr.length; i++) {
    finalString += strArr[i].length >= 5
        ? strArr[i].split('').reversed.join() + ' '
        : strArr[i] + ' ';
  }
  return finalString.trim();
}
