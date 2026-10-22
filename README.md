# Maymundan Zeki Misin?

Flutter reasoning game for Android and iOS. Turkish, English and Spanish
interfaces and question banks are selected through the saved language setting.
English and Spanish each have 50 language-appropriate questions; they are not
advertised as a complete translation of every Turkish question.

## Player loop

Choose an answer to a timed six-option reasoning scenario, read the explanation,
compare human/monkey scores and review category performance. The game records
local progress, history, XP, saved sessions and daily-challenge streaks.
Scores are for entertainment and are not validated IQ measurements.

## Implementation

- `lib/models/game_state.dart`: timed sessions, scoring, daily challenge,
  saved/resumed games and local progress.
- `lib/data/question_bank.dart`: language-specific bank selection.
- `lib/screens/quiz_screen.dart`: question and explanation flow.
- `lib/screens/cognitive_profile_screen.dart`: category feedback.
- `lib/services/app_language.dart`: stored language choice.
- `lib/services/ad_service.dart`: platform ad initialization and privacy flow.

Flutter, Provider, shared_preferences, Google Mobile Ads and audioplayers are
third-party dependencies. Classic puzzles and mathematical ideas are not claimed
as exclusive inventions. See `docs/review-20261022/` for the bounded source audit,
test evidence and the nine answers submitted to App Review.

## Development verification

```sh
flutter pub get
flutter analyze --no-pub
flutter test --reporter expanded
```

On 22 October 2026: analysis clean, 9 tests passed. Host tests do not replace
physical iPhone/iPad QA or editorial checking of every puzzle.

## Release distinction

Google Play's pending 1.0.16 artifact and Apple's rejected 1.0.15 artifact are
separate from later source changes. In particular, the RIDDLE_017 tennis answer
correction (13 games) is a subsequent source fix and requires a new artifact to
reach users. An App Review response is not an approval or a new binary upload.
