import 'dart:io';

void main() async {
  final dir = Directory('lib/data');
  int totalCount = 0;

  for (var file in dir.listSync()) {
    if (file is File && file.path.contains('questions_part') && file.path.endsWith('.dart')) {
      String content = await file.readAsString();
      final allMatches = RegExp(r"\{\s*'id':\s*'([^']+)'").allMatches(content);
      totalCount += allMatches.length;
    }
  }

  print('FINAL REMAINING TOTAL QUESTIONS: $totalCount');
}
