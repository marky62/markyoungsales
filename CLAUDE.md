# Mark Young Sales

Repo for the Mark Young Sales business: the five project skills that encode how
the work is done, plus the public site.

## Source of truth

| Thing | Lives in |
|---|---|
| Skill content, and what Claude loads in this repo | **This repo**, `.claude/skills/*/SKILL.md` |
| Locked decisions and their reasoning | `DECISIONS.md` |
| What's published on the channel | `VIDEOS.md` |
| Approved scripts | Notion (page IDs are in the relevant skill) |

The skills live at `.claude/skills/`, the project skills location. Any Claude
Code session **in this repo** loads them from here automatically, and a project
skill **overrides a skill of the same name synced from the claude.ai account**,
so the repo always wins and the skills sync cannot revert it.

**The copies in Mark's claude.ai account are stale and deliberately unused.**
They were last updated in June 2026 and are months behind. Don't treat them as
a second source, don't reconcile against them, and don't quote them. If Cowork
or another non-repo surface is ever used for this work, they'd need installing
first — assume they are wrong until that happens.

## Standing rule — commit skill changes before the session ends

**Any session that edits a file under `.claude/skills/` must commit and push it
before ending.** That is the whole step. The commit is what makes the change
live for every future session in this repo.

An uncommitted skill edit is lost when the container is reclaimed, and it takes
the reasoning with it — so commit even a small wording fix, and say in the
message what changed and why.

Never edit the copies under `~/.claude/skills/synced/`. That directory is a
cache of the account skills; it gets wiped and refreshed without warning, and
anything written there is gone.

### Why this rule exists

On 28 August 2026 the skills sync refreshed `~/.claude/skills/synced/` from the
account mid-session, moved the local folder to `.trash`, and restored months-old
versions — silently reverting that week's rule changes. Nothing was lost only
because everything was already committed.

Moving the skills to `.claude/skills/` fixed it: project skills are read from
the repo and override the synced account copies by name, so a sync can no
longer revert them.

## Working notes

- Skill folder names are fixed — the name is what overrides the synced copy.
  `mys-vod-scripting` now covers the live cohort
  programme; the folder keeps its old name so installed copies don't break.
- `dist/` is a build directory and is not committed.
- `scripts/package-skills.sh` builds installable `.skill` files. It is not part
  of the routine — it exists only if the skills ever need to go somewhere that
  isn't this repo.
