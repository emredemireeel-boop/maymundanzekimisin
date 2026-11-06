import 'package:flutter_test/flutter_test.dart';
import 'package:zihin_tuzaklari/models/forest_route.dart';

void main() {
  test('daily boards stay deterministic and always have a valid solution', () {
    for (var day = 0; day < 366; day++) {
      final route = ForestRoute.forDate(DateTime(2026, 1, day + 1));
      final sameDay = ForestRoute.forDate(DateTime(2026, 1, day + 1, 23));
      expect(route.fruit, sameDay.fruit);
      expect(route.walls, sameDay.walls);
      expect(route.walls.intersection(route.fruit.toSet()), isEmpty);
      expect(route.shortestRoute, greaterThanOrEqualTo(10));
      expect(route.monkeyMoves, route.shortestRoute! + 2);
    }
  });

  test('a fruit counts only in order and a move cannot wrap rows', () {
    final route = ForestRoute.forDate(DateTime(2026, 11, 6));
    expect(route.move((cell: 3, fruitCount: 0), 4), isNull);
    expect(route.completed((cell: ForestRoute.finish, fruitCount: 2)), isFalse);
    final second = route.fruit[1];
    final row = second ~/ ForestRoute.size;
    final adjacent = (row == 0 ? second + 4 : second - 4);
    expect(route.move((cell: adjacent, fruitCount: 0), second)!.fruitCount, 0);
    expect(route.move((cell: adjacent, fruitCount: 1), second)!.fruitCount, 2);
  });
}
