# Mark Young Sales

Repo for the Mark Young Sales business: the five project skills that encode how
the work is done, plus the public site.

## Source of truth

| Thing | Lives in |
|---|---|
| Skill content, and what Claude Code loads in this repo | **This repo**, `.claude/skills/*/SKILL.md` |
| What Cowork and other surfaces load | **Mark's Claude account** |
| Locked decisions and their reasoning | `DECISIONS.md` |
| What's published on the channel | `VIDEOS.md` |
| Approved scripts | Notion (page IDs are in the relevant skill) |

The skills live at `.claude/skills/`, which is the project skills location.
Any Claude Code session in this repo loads them from here automatically, and a
project skill **overrides a skill of the same name synced from the claude.ai
account** — so the repo always wins locally, and the skills sync cannot revert
them.

Cowork is not repo-scoped, so it still loads the account copies. Those only
change when a `.skill` package is saved into the account.

## Standing rule — package skills whenever they change

**Any session that edits a file under `.claude/skills/` must, before it ends:**

1. Commit and push. That alone makes the change live for Claude Code sessions
   in this repo.
2. Run `./scripts/package-skills.sh <changed-skill> [...]` — or with no
   arguments to rebuild all five.
3. Send the resulting `dist/*.skill` files to Mark with `SendUserFile`, and say
   plainly that Cowork keeps running the old rules until he installs them.

Do steps 2 and 3 without being asked. Note that the **Save skill** button on
the file card does not appear for Mark's account, so he installs them through
claude.ai settings.

### Why this rule exists

On 28 August 2026 the skills sync refreshed `~/.claude/skills/synced/` from the
account mid-session, moved the local folder to `.trash`, and restored months-old
versions — silently reverting that week's rule changes. Nothing was lost only
because everything was already committed.

Moving the skills to `.claude/skills/` fixes this for Claude Code: project
skills are read from the repo and override the synced account copies by name,
so a sync can no longer revert them. Never edit the copies under
`~/.claude/skills/synced/` — they are a cache and get replaced without warning.

The account copies still matter for Cowork, and an account left stale is worse
than it sounds because the drift is invisible.

## Working notes

- Skill folder names are fixed — the name is what overrides the synced copy.
  `mys-vod-scripting` now covers the live cohort
  programme; the folder keeps its old name so installed copies don't break.
- `dist/` is a build directory and is not committed.
