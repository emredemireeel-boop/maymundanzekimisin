import 'dart:io';
void main() {
  final file = File('lib/data/questions_part19.dart');
  var text = file.readAsStringSync();
  
  // Replace unescaped single quotes inside words (Turkish apostrophes)
  final regExp = RegExp(r"([a-zA-Z0-9ığüşöçİĞÜŞÖÇ])'([a-zA-Z0-9ığüşöçİĞÜŞÖÇ])");
  text = text.replaceAllMapped(regExp, (match) => "");

  file.writeAsStringSync(text);
  print('Replaced quotes in dart.');
}
