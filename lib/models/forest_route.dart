import 'dart:collection';
import 'dart:math';

typedef ForestPosition = ({int cell, int fruitCount});

class ForestRoute {
  ForestRoute._(this.day, Set<int> walls, List<int> fruit)
    : walls = Set.unmodifiable(walls),
      fruit = List.unmodifiable(fruit);

  static const size = 4;
  static const start = 12;
  static const finish = 3;
  static const initial = (cell: start, fruitCount: 0);

  final int day;
  final Set<int> walls;
  final List<int> fruit;

  late final int? shortestRoute = _shortestRoute();

  static ForestRoute forDate(DateTime date) {
    final day = DateTime.utc(
      date.year,
      date.month,
      date.day,
    ).difference(DateTime.utc(2026)).inDays;
    final random = Random(day);
    for (var attempt = 0; attempt < 60; attempt++) {
      final available = [
        for (var cell = 0; cell < size * size; cell++)
          if (cell != start && cell != finish) cell,
      ]..shuffle(random);
      final candidate = ForestRoute._(
        day,
        available.take(4).toSet(),
        available.skip(4).take(3).toList(),
      );
      final shortest = candidate.shortestRoute;
      if (shortest != null && shortest >= 10 && shortest <= 22) {
        return candidate;
      }
    }
    return ForestRoute._(day, {5, 6, 9, 10}, [0, 15, 1]);
  }

  int get monkeyMoves => shortestRoute! + 2;

  bool completed(ForestPosition position) =>
      position.cell == finish && position.fruitCount == fruit.length;

  ForestPosition? move(ForestPosition from, int cell) {
    if (cell < 0 || cell >= size * size || walls.contains(cell)) return null;
    final rowDistance = (from.cell ~/ size - cell ~/ size).abs();
    final columnDistance = (from.cell % size - cell % size).abs();
    if (rowDistance + columnDistance != 1) return null;
    final nextFruit = from.fruitCount;
    return (
      cell: cell,
      fruitCount: nextFruit < fruit.length && fruit[nextFruit] == cell
          ? nextFruit + 1
          : nextFruit,
    );
  }

  int? _shortestRoute() {
    final seen = <ForestPosition>{initial};
    final queue = Queue<({ForestPosition position, int steps})>()
      ..add((position: initial, steps: 0));
    while (queue.isNotEmpty) {
      final current = queue.removeFirst();
      if (completed(current.position)) return current.steps;
      for (final delta in [-size, -1, 1, size]) {
        final next = move(current.position, current.position.cell + delta);
        if (next != null && seen.add(next)) {
          queue.add((position: next, steps: current.steps + 1));
        }
      }
    }
    return null;
  }
}
