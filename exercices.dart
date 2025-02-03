String oneFor({String name = ""}) {
  if (name == "") {
    return 'One for you, one for me.';
  } else {
    return 'One for ${name}, one for me';
  }
}

String leapYear(int year) {
  if (year % 100 == 0) {
    if (year % 400 == 0) {
      return "This is a leap year";
    } else {
      return "This is not a leap year";
    }
  } else if (year % 4 == 0) {
    return "This is a leap year";
  } else {
    return "This is not a leap year";
  }
}

int scrabble(String word) {
  Map<String, int> values = {
    'a': 1,
    'b': 3,
    'c': 3,
    'd': 2,
    'e': 1,
    'f': 4,
    'g': 2,
    'h': 4,
    'i': 1,
    'j': 8,
    'k': 5,
    'l': 1,
    'm': 3,
    'n': 1,
    'o': 1,
    'p': 3,
    'q': 10,
    'r': 1,
    's': 1,
    't': 1,
    'u': 1,
    'v': 4,
    'w': 4,
    'x': 8,
    'y': 4,
    'z': 10
  };
  int res = 0;
  for (int i = 0; i < word.length; i++) {
    res = res + (values[word[i].toLowerCase()] ?? 0);
  }
  return res;
}

void main() {
  //print(oneFor(name: "Guillaume"));
  //print(leapYear(2000));
  print(scrabble("cabbage"));
}
