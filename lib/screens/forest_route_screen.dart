import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zihin_tuzaklari/l10n/app_text.dart';
import 'package:zihin_tuzaklari/l10n/ui_translations.dart';
import 'package:zihin_tuzaklari/models/forest_route.dart';

class ForestRouteScreen extends StatefulWidget {
  const ForestRouteScreen({super.key});

  @override
  State<ForestRouteScreen> createState() => _ForestRouteScreenState();
}

class _ForestRouteScreenState extends State<ForestRouteScreen> {
  late final _route = ForestRoute.forDate(DateTime.now());
  late final _bestKey = 'forest_route_best_${_route.day}';
  final _preferences = SharedPreferences.getInstance();
  ForestPosition _position = ForestRoute.initial;
  int _moves = 0;
  int? _best;

  @override
  void initState() {
    super.initState();
    _loadBest();
  }

  Future<void> _loadBest() async {
    final prefs = await _preferences;
    if (!mounted) return;
    setState(() => _best = prefs.getInt(_bestKey));
  }

  Future<void> _move(ForestPosition next) async {
    setState(() {
      _position = next;
      _moves++;
    });
    if (!_route.completed(next)) return;
    final moves = _moves;
    final prefs = await _preferences;
    final saved = prefs.getInt(_bestKey);
    if (saved != null && saved <= moves) return;
    if (mounted) setState(() => _best = moves);
    await prefs.setInt(_bestKey, moves);
  }

  void _restart() => setState(() {
    _position = ForestRoute.initial;
    _moves = 0;
  });

  String _text(String label) =>
      localizeUi(label, Localizations.localeOf(context).languageCode);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final done = _route.completed(_position);
    return Scaffold(
      appBar: AppBar(title: const AppText('Orman Rotası')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const AppText(
                    'Yanındaki kareye dokun. Meyveleri 1, 2, 3 sırasıyla topla ve bayrağa ulaş. Kayalar yolu kapatır.',
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: [
                      Chip(label: Text('${_text('Hamle')} $_moves')),
                      Chip(
                        avatar: const ExcludeSemantics(child: Text('🐒')),
                        label: Text(
                          '${_text('Maymunun hedefi')} ${_route.monkeyMoves}',
                        ),
                      ),
                      if (_best != null)
                        Chip(label: Text('${_text('Günün rekoru')} $_best')),
                    ],
                  ),
                  const SizedBox(height: 12),
                  GridView.count(
                    crossAxisCount: ForestRoute.size,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      for (
                        var cell = 0;
                        cell < ForestRoute.size * ForestRoute.size;
                        cell++
                      )
                        _tile(cell, done: done),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (done)
                    Semantics(
                      liveRegion: true,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            _moves < _route.monkeyMoves
                                ? 'Maymunu geçtin!'
                                : _moves == _route.monkeyMoves
                                ? 'Maymunla berabere!'
                                : 'Rotayı tamamladın!',
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            '${_text('En kısa rota')} ${_route.shortestRoute}',
                          ),
                        ],
                      ),
                    )
                  else
                    Semantics(
                      liveRegion: true,
                      child: _position.fruitCount == _route.fruit.length
                          ? const AppText(
                              'Bütün meyveler toplandı. Bayrağa git!',
                            )
                          : Text(
                              '${_text('Sıradaki meyve')} ${_position.fruitCount + 1}',
                            ),
                    ),
                  const SizedBox(height: 10),
                  OutlinedButton.icon(
                    onPressed: _moves == 0 ? null : _restart,
                    icon: const Icon(Icons.replay),
                    label: const AppText('Rotayı baştan oyna'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _tile(int cell, {required bool done}) {
    final colors = Theme.of(context).colorScheme;
    final current = _position.cell == cell;
    final wall = _route.walls.contains(cell);
    final fruitIndex = _route.fruit.indexOf(cell);
    final fruit = fruitIndex >= _position.fruitCount;
    final next = done ? null : _route.move(_position, cell);
    final (icon, label) = switch ((current, wall, fruit, cell)) {
      (true, _, _, _) => ('👣', _text('Konumun')),
      (_, true, _, _) => ('🪨', _text('Kaya')),
      (_, _, true, _) => (
        '${fruitIndex + 1}',
        '${_text('Meyve')} ${fruitIndex + 1}',
      ),
      (_, _, _, ForestRoute.finish) => ('🚩', _text('Bitiş')),
      _ => ('', _text('Boş kare')),
    };
    final coordinates =
        '${cell ~/ ForestRoute.size + 1}, ${cell % ForestRoute.size + 1}';
    return Semantics(
      label: '$coordinates. $label',
      button: next != null,
      child: Material(
        color: current
            ? colors.primaryContainer
            : next != null
            ? colors.secondaryContainer
            : colors.surfaceContainerHighest,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: next != null ? colors.secondary : Colors.transparent,
            width: 2,
          ),
        ),
        child: InkWell(
          key: ValueKey('forest-cell-$cell'),
          borderRadius: BorderRadius.circular(12),
          onTap: next == null ? null : () => _move(next),
          child: Center(
            child: ExcludeSemantics(
              child: Text(
                icon,
                style: TextStyle(
                  color: current ? colors.onPrimaryContainer : colors.onSurface,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
