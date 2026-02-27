import 'dart:io';

void main() async {
  final dir = Directory('lib/data');
  int deletedCount = 0;
  int initialTotal = 0;
  List<String> deletedIds = [];

  for (var file in dir.listSync()) {
    if (file is File && file.path.contains('questions_part') && file.path.endsWith('.dart')) {
      String content = await file.readAsString();
      
      // Count initial questions in this file
      final allMatches = RegExp(r"\{\s*'id':\s*'([^']+)'").allMatches(content);
      initialTotal += allMatches.length;

      // Regular expression to match each question block
      // Starts with { and ends with },
      final questionRegex = RegExp(r"(\s*\{[^}]+'id':\s*'([^']+)'(?:.|\n)*?\n\s*\},)");
      
      String newContent = content.replaceAllMapped(questionRegex, (match) {
        String block = match.group(0)!;
        String id = match.group(2)!;
        
        // Extract scenario and insight safely to avoid matching next question
        final scenarioMatch = RegExp(r"'scenario':\s*'((?:\\'|[^'])*)'").firstMatch(block);
        final insightMatch = RegExp(r"'insight':\s*'((?:\\'|[^'])*)'").firstMatch(block);
        
        if (scenarioMatch != null && insightMatch != null) {
          String scenario = scenarioMatch.group(1)!;
          String insight = insightMatch.group(1)!;
          
          bool isBoring = false;
          int length = scenario.length + insight.length;
          
          if (length > 600) isBoring = true;
          
          String textLower = (scenario + insight).toLowerCase();
          List<String> buzzwords = [
            'nasa', 'titanik', 'mozart', 'deney', 'i. dünya', 'ii. dünya', 
            'abraham wald', 'joshua bell', 'hayatta kalma yanılgısı', 
            'survivorship bias', 'kabile ', 'kuvöz', 'denizate', 'bilimsel veri'
          ];
          
          for (var word in buzzwords) {
            if (textLower.contains(word)) {
              isBoring = true;
              break;
            }
          }

          if (isBoring) {
            print('Deleted: $id (Length: $length)');
            deletedCount++;
            deletedIds.add(id);
            return ''; // Remove the block!
          }
        }
        
        return block; // Keep the block
      });

      // Special case: `[ \n ]` empty list issue or dangling comma.
      // Usually, the last element might not have a trailing comma, but in dart they usually do.
      
      await file.writeAsString(newContent);
    }
  }

  print('\n--- SUMMARY ---');
  print('Initial Total Questions: \$initialTotal');
  print('Deleted Questions: \$deletedCount');
  print('REMAINING TOTAL QUESTIONS: \${initialTotal - deletedCount}');
}
