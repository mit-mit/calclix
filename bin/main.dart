void main(List<String> arguments) {
  print('Usage: calclix <text file>');
}

String? readFile(String path) {
  return null;
}

Counts count(String text) {
  return Counts();
}

class Counts {
  int? words;
  int? periods;
  int? longWords;
}
