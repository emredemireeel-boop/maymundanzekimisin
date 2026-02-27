import 'dart:io';

void main() async {
  final dir = Directory('lib/data');
  int deletedCount = 0;
  int fixedCount = 0;
  
  List<String> keepCaps = [
    'ABD', 'NASA', 'FBI', 'CIA', 'CEO', 'CFO', 'DNA', 'IQ', 'TC', 'TV', 'AI', 'HIV',
    'O', 'A', 'B', 'AB', 'M.Ö', 'M.Ö.', 'M.S', 'M.S.', 'USB', 'CD', 'DVD', 'PC',
    'VIP', 'ATM', 'PIN', 'SMS', 'THY', 'BM'
  ];

  for (var file in dir.listSync()) {
    if (file is File && file.path.contains('questions_part') && file.path.endsWith('.dart')) {
      String content = await file.readAsString();
      
      final questionRegex = RegExp(r"(\s*\{[^}]+'id':\s*'([^']+)'(?:.|\n)*?\n\s*\},)");
      
      String newContent = content.replaceAllMapped(questionRegex, (match) {
        String block = match.group(0)!;
        String id = match.group(2)!;
        
        final scenarioMatch = RegExp(r"'scenario':\s*'((?:\\'|[^'])*)'").firstMatch(block);
        if (scenarioMatch != null) {
          String scenario = scenarioMatch.group(1)!.toLowerCase();
          
          bool shouldDelete = false;
          
          if (scenario.contains('7 kırmızı') || scenario.contains('torbada')) {
            if (scenario.contains('kırmızı') && scenario.contains('mavi')) shouldDelete = true;
          }
          if (scenario.contains('joshua')) shouldDelete = true;
          if (scenario.contains('labirent') && (scenario.contains('japonya') || scenario.contains('en kısa'))) shouldDelete = true;
          if (scenario.contains('taksi kazası') || scenario.contains('%85 yeşil') || scenario.contains('yüzde 85')) shouldDelete = true;
          if (scenario.contains('gece yarısı evine gelir') || scenario.contains('yatakta başka bir')) shouldDelete = true;
          if (scenario.contains('kısa savaşı') || scenario.contains('en kısa savaşı')) shouldDelete = true;
          if (scenario.contains('ankara') && scenario.contains('pilot')) shouldDelete = true;
          if (scenario.contains('8 saat uyuyor') || scenario.contains('sekiz saat uyuyor')) shouldDelete = true;

          if (shouldDelete) {
            print('Deleted $id');
            deletedCount++;
            return '';
          }
        }
        
        // Fix options capitalization
        bool changedOpt = false;
        String newBlock = block.replaceAllMapped(RegExp(r"('options':\s*\[)(.*?)(\]\s*,)", dotAll: true), (m) {
            String start = m.group(1)!;
            String mid = m.group(2)!;
            String end = m.group(3)!;
            
            String newMid = mid.replaceAllMapped(RegExp(r"'((?:\\'|[^'])*)'"), (m2) {
                String optText = m2.group(1)!;
                // Replace uppercase words > 1 length
                String newOptText = optText.replaceAllMapped(RegExp(r'[A-ZÇĞİÖŞÜ]{2,}'), (m3) {
                    String w = m3.group(0)!;
                    if (keepCaps.contains(w)) return w;
                    // Lowercase the word
                    String lower = w.toLowerCase();
                    // Just a small mapping for Turkish specific 'I' vs 'i' etc if running into edge cases
                    return lower;
                });
                
                // Ensure first letter of option is capitalized
                if (newOptText.isNotEmpty) {
                    if (newOptText[0].toLowerCase() == newOptText[0]) {
                        // Needs to be capitalized
                        newOptText = newOptText[0].toUpperCase() + newOptText.substring(1);
                    }
                }
                
                if (newOptText != optText) changedOpt = true;
                return "'$newOptText'";
            });
            return "$start$newMid$end";
        });
        
        if (changedOpt) {
          fixedCount++;
        }
        return newBlock; 
      });
      
      await file.writeAsString(newContent);
    }
  }

  print('Total Deleted: $deletedCount');
  print('Total Questions where options were capital-fixed: $fixedCount');
  
  // Count remaining
  int totalRemaining = 0;
  for (var file in dir.listSync()) {
    if (file is File && file.path.contains('questions_part') && file.path.endsWith('.dart')) {
      String c = await file.readAsString();
      totalRemaining += RegExp(r"\{\s*'id':\s*'([^']+)'").allMatches(c).length;
    }
  }
  print('Total Remaining Questions: $totalRemaining');
}
