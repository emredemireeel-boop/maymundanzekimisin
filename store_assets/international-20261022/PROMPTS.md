# International store feature graphics — 22 October 2026

Built-in image_gen was used with `assets/logo.png` as the reference. Originals remain under the Codex generated_images folder. Final store copies are `feature-en.png` and `feature-es.png`, downscaled to Google's required 1024×500 RGB PNG size.

Shared prompt: Use case: ads-marketing. Create a Google Play feature graphic exactly 1024 x 500 pixels, full bleed landscape, opaque background. Use the referenced existing app logo faithfully: the split cyan human head and golden monkey head with chess knight; preserve the distinctive brand, do not replace it with another mascot. Premium midnight navy background with restrained cyan and gold light, logo large on right, very crisp legible bold sans-serif headline on left, generous safe margins. No phone mockup, no ratings, no rankings, no install badge, no Turkish words, no other text.

English headline, verbatim: “Smarter Than\na Monkey?”

Spanish headline, verbatim: “¿Eres más listo\nque un mono?”

## Findings verified in Play Console

- Production: 1.0.15 (15), 33 countries/regions. US, UK, Canada, Australia, Spain, Mexico and numerous Spanish-speaking Latin American countries are included.
- Localized store text exists for en-US, en-GB, es-419 and es-ES. English app name: Smarter Than a Monkey? Spanish: ¿Eres más listo que un mono?
- Foreign-language feature graphics were still inherited from the Turkish listing. English and Spanish replacement graphics were generated to fix this mismatch.
- Last 28-day overview: 4.52K device impressions (−76%), 93 device acquisitions (+4%), 48 first opens (−32%), store listing conversion 36.96%. These are overall metrics, not country-specific conversion rates.
- Country breakdown offered Overall and Turkey at the available volume. Small differences between overall and Turkey are not proof that other countries are blocked or have exactly zero installs.
- English and Spanish puzzle-bank/answer preservation and saved language preference tests passed (2 tests).
- Play Console also flags a 16KB RELRO compatibility risk in libdatastore_shared_counter.so. The project already pins NDK 29, so merely changing NDK again would not fix a prebuilt plugin library. This warning requires a targeted dependency/binary check before a new app release.

Publication status of the new graphics must be verified separately; generation alone is not publication.
