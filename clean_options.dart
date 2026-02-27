import 'dart:io';

void main() async {
  final dir = Directory('lib/data');
  final files = dir.listSync().where((f) => f.path.contains('questions_part') && f.path.endsWith('.dart')).toList();
  
  for (var file in files) {
    if (file is File) {
      String content = await file.readAsString();
      String original = content;

      // Fix specific syntax error
      content = content.replaceAll(RegExp(r'\},?\s*\[\s*\{'), '},\n  {');

      // Find options block
      content = content.replaceAllMapped(RegExp(r'(\x27options\x27|"options")\s*:\s*\[(.*?)\]', dotAll: true), (match) {
        String optionsBlock = match.group(2)!;
        String propName = match.group(1)!;

        // Replace strings inside options block
        String replacedBlock = optionsBlock.replaceAllMapped(RegExp(r'([\x27"])(.*?)(?<!\\)\1'), (strMatch) {
          String quote = strMatch.group(1)!;
          String text = strMatch.group(2)!;

          // Remove parentheses
          text = text.replaceAll(RegExp(r'\s*\([^)]*\)\s*'), '');

          // Lowercase uppercase words length >= 2
          text = text.replaceAllMapped(RegExp(r'\b[A-ZÇĞİÖŞÜ]{2,}\b'), (wordMatch) {
            return wordMatch.group(0)!.toLowerCase();
          });

          text = text.trim();
          if (text.isNotEmpty) {
            text = text[0].toUpperCase() + text.substring(1);
          }

          return '$quote$text$quote';
        });

        return '$propName: [$replacedBlock]';
      });

      if (content != original) {
        await file.writeAsString(content);
        print('Updated ${file.path}');
      }
    }
  }
}
