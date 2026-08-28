# Mark Young Sales

Repo for the Mark Young Sales business: the five project skills that encode how
the work is done, plus the public site.

## Source of truth

| Thing | Lives in |
|---|---|
| Skill content (rules, frameworks, locked decisions) | **This repo**, `skills/*/SKILL.md` |
| The skills Claude actually loads at runtime | **Mark's Claude account** |
| Locked decisions and their reasoning | `DECISIONS.md` |
| What's published on the channel | `VIDEOS.md` |
| Approved scripts | Notion (page IDs are in the relevant skill) |

The repo and the account are **not** connected. Nothing you edit here reaches
the runtime until a `.skill` package is saved into the account.

## Standing rule — package skills whenever they change

**Any session that edits a file under `skills/` must, before it ends:**

1. Commit and push the change.
2. Run `./scripts/package-skills.sh <changed-skill> [...]` — or with no
   arguments to rebuild all five.
3. Send the resulting `dist/*.skill` files to Mark with `SendUserFile`. Each
   file card carries a **Save skill** button that installs it to his profile.
4. Tell him plainly that the skills aren't live until he saves them.

Do this without being asked. It is not optional tidying — the account copy is
what every future session and every other surface loads.

### Why this rule exists

On 28 August 2026 the skills sync refreshed `~/.claude/skills/synced/` from the
account mid-session, moved the local folder to `.trash`, and restored months-old
versions — silently reverting that week's rule changes. Nothing was lost only
because everything was already committed.

Two things follow. Local edits to the synced skills folder are a temporary
patch for the current session and nothing more. And an account left stale means
Cowork and every other surface keeps running the old rules, which is worse than
it sounds because the drift is invisible.

## Working notes

- Skill folder names are fixed. `mys-vod-scripting` now covers the live cohort
  programme; the folder keeps its old name so installed copies don't break.
- `dist/` is a build directory and is not committed.
