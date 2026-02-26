import 'dart:io';
import 'dart:convert';

void main() async {
  final dir = Directory('lib/data');
  List<Map<String, dynamic>> allQuestions = [];

  for (var file in dir.listSync()) {
    if (file is File && file.path.contains('questions_part') && file.path.endsWith('.dart')) {
      final content = await file.readAsString();
      
      final idMatches = RegExp(r"'id':\s*'([^']+)'").allMatches(content).toList();
      final scenarioMatches = RegExp(r"'scenario':\s*'((?:\\'|[^'])*)'").allMatches(content).toList();
      final insetMatches = RegExp(r"'insight':\s*'((?:\\'|[^'])*)'").allMatches(content).toList();
      
      for (int i = 0; i < idMatches.length; i++) {
        if (i < scenarioMatches.length && i < insetMatches.length) {
          String id = idMatches[i].group(1)!;
          String scenario = scenarioMatches[i].group(1)!;
          String insight = insetMatches[i].group(1)!;
          
          allQuestions.add({
            'file': file.path,
            'id': id,
            'scenario': scenario,
            'insight': insight,
            'length': scenario.length + insight.length
          });
        }
      }
    }
  }

  allQuestions.sort((a, b) => b['length'].compareTo(a['length']));
  
  final outputFile = File('q_analysis.json');
  await outputFile.writeAsString(jsonEncode(allQuestions.take(50).toList()));
  print('Wrote 50 longest questions to q_analysis.json');
}
