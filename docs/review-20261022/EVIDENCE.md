# Maymundan Zeki Misin? — review evidence, 22 October 2026

## Product and evidence boundary

The game combines timed reasoning scenarios, human/monkey rivalry, six choices, explanations, category results, saved sessions, XP and daily challenges. Classic riddles are not claimed as exclusive inventions. Automated tests and code differences cannot by themselves establish compliance with Apple's originality guidelines.

## Implementation map

| Behavior | Source |
| --- | --- |
| Session, timer, score, daily progress, local history/resume | `lib/models/game_state.dart` |
| Correct answer identity and category model | `lib/models/question_model.dart` |
| TR/EN/ES question bank selection | `lib/data/question_bank.dart` |
| Gameplay and explanation flow | `lib/screens/quiz_screen.dart` |
| Category feedback and results | `lib/screens/cognitive_profile_screen.dart`, `lib/screens/result_screen.dart` |
| Saved language preference | `lib/services/app_language.dart` |

## Verification

`flutter test --reporter expanded`: **9 passed** on 22 October 2026, including tablet daily challenge, ad-break controls, language persistence, localized answer identity and content structure. These are Windows-hosted Flutter tests, not a real-iPhone beta study.

The tennis puzzle RIDDLE_017 was corrected in source: Lisa wins 5, Susan's net profit is 3, so Susan wins 8; total 13. A regression test derives the answer from the two constraints. This correction is NOT in rejected iOS build 1.0.15. The pending Android 1.0.16 artifact is not claimed to contain this later correction either.

Exact-file SHA-256 comparison of 34 eligible tracked lib/assets files against other local Git projects found zero matches. See `source-sharing-audit.json`. This does not establish external provenance or absence of semantic reuse. Dependencies and classic puzzle concepts are explicitly disclosed.

No independently documented external beta cohort was provided; no tester count or testimonial is invented. `apple-response.txt` answers all nine Apple questions and distinguishes implemented source changes from the rejected binary.
