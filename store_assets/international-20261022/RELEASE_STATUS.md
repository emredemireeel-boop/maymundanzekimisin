# Google Play update — 22 October 2026

- Source commit 90fea5e pushed to origin/main.
- Release AAB 1.0.16 (16) built successfully, 50.5 MB.
- Flutter analyze: no issues. Four targeted localization/capture tests passed.
- Fixes: preserve emoji when a generated translation is empty, wrap the home
  title, use the shorter Spanish answer button wording.
- shared_preferences_android updated 2.4.20 -> 2.4.23; resolved Android
  DataStore dependency verified as 1.1.7. This follows the Flutter plugin's
  documented rollback of the DataStore 1.2.0 compatibility regression.
- Play release preview reported one warning only: missing obfuscation mapping.
  This app disables minification. No 16 KB blocking error appeared on that page;
  an actual 16 KB Android runtime has not been tested locally.
- Production release 8, version 16 (1.0.16), saved and review request sent.
- Four localized store listings updated: en-US, en-GB, es-419, es-ES. Each now
  has the corresponding English/Spanish feature graphic and two actual game
  screenshots in that language. Turkish listing retained its existing images.
- Generated feature-en.png and feature-es.png labeled as AI-generated.
- Nine total changes submitted. Publishing page shows changes under review
  while Google performs automatic pre-review checks. Not approved/live yet.
- Country availability previously verified: 33 countries, including US, UK,
  Spain and major Spanish-speaking Latin American countries. No country change
  was needed. Low volume does not establish foreign availability is blocked.
- iOS release was not modified or submitted in this update.

Proof: play-review-1.0.16.png
Console: https://play.google.com/console/u/1/developers/7450458966933115915/app/4976006670699033823/publishing
