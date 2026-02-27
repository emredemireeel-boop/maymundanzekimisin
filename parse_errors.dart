import 'dart:io';
void main() {
  final file = File('analyze_out.txt');
  if (!file.existsSync()) return;
  final lines = file.readAsLinesSync();
  int count = 0;
  for (final l in lines) {
    if (l.contains('error -') && !l.contains('unused')) {
      print(l.trim());
      count++;
      if (count >= 15) break;
    }
  }
}
