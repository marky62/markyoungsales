#!/usr/bin/env bash
# Package MYS skills as .skill files ready to save into the Claude account.
#
#   ./scripts/package-skills.sh                 # package all five
#   ./scripts/package-skills.sh mys-yt-scripting mys-ideation
#
# A .skill file is a deflate zip containing <skill-name>/SKILL.md (plus any
# other files in the skill folder). Output lands in dist/.
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p dist
skills=("$@")
if [ ${#skills[@]} -eq 0 ]; then
  mapfile -t skills < <(find .claude/skills -maxdepth 1 -mindepth 1 -type d -printf '%f\n' | sort)
fi
for s in "${skills[@]}"; do
  if [ ! -f ".claude/skills/$s/SKILL.md" ]; then
    echo "skip $s — no SKILL.md" >&2; continue
  fi
  python3 - "$s" <<'PY'
import sys, zipfile, pathlib
s = sys.argv[1]
src = pathlib.Path('.claude/skills') / s
out = pathlib.Path('dist') / (s + '.skill')
with zipfile.ZipFile(out, 'w', zipfile.ZIP_DEFLATED) as z:
    for f in sorted(src.rglob('*')):
        if f.is_file() and f.name not in {'.DS_Store'} and '__pycache__' not in f.parts:
            z.write(f, str(pathlib.Path(s) / f.relative_to(src)))
print(f"  {out}")
PY
done
echo "Done. Send the files in dist/ to Mark; each card has a Save skill button."
