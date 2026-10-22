"""Bounded exact-file comparison, not a proof of intellectual-property ownership.

Usage: python reproduce_source_audit.py C:/Users/GAMER/Desktop/Projelerim Notecat
Only paths tracked under lib/ and assets/ are compared; build outputs and
generated Dart files are excluded. No repository content is sent to a server.
"""
import hashlib
import json
from pathlib import Path
import subprocess
import sys

base, target = Path(sys.argv[1]), sys.argv[2]
index, selected = {}, []
for project in base.iterdir():
    if not (project / '.git').exists() or 'backup' in project.name:
        continue
    result = subprocess.run(
        ['git', 'ls-files', 'lib', 'assets'], cwd=project,
        capture_output=True, text=True, encoding='utf-8', check=True,
    )
    for relative in result.stdout.splitlines():
        path = project / relative
        if (not path.is_file() or path.stat().st_size < 100 or
                any(part in relative for part in
                    ('.g.dart', '.freezed.dart', 'app_localizations'))):
            continue
        digest = hashlib.sha256(path.read_bytes()).hexdigest()
        index.setdefault(digest, []).append((project.name, relative))
        if project.name == target:
            selected.append((digest, relative))

matches = []
for digest, relative in selected:
    others = [{'project': name, 'file': filename}
              for name, filename in index[digest] if name != target]
    if others:
        matches.append({'file': relative, 'sha256': digest, 'matches': others})
print(json.dumps({'files_checked': len(selected), 'exact_matches': matches},
                 ensure_ascii=False, indent=2))
