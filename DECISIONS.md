# Mark Young Sales — Locked Decisions

A running record of decisions that change how the skills behave. Newest first.
When a decision here changes, update the relevant `skills/*/SKILL.md` in the
same commit.

---

## 27 August 2026 — Offer stack restructure

Prompted by a review of Wes McDowell's expert-brand material against the
existing system.

### The methodology is now given away in full

Free YouTube content teaches the method — frameworks, named systems, the
reasoning, the numbers. The previous "no methodology giveaway" rule and the
original form of the Ali's Bins principle are retired.

What stays paid is **application**, not information: the templates themselves,
and Mark working through one person's actual territory with them.

**Test applied to every script:** would this video still be worth the viewer's
time if they never bought anything? If not, something is being withheld that
shouldn't be.

### Offer stack

| Offer | Status |
|---|---|
| £397 90-Day Account Plan VOD | **Retired.** Not sold, not referenced in public copy. |
| Coaching call | £150 → **£197** |
| Mentorship | Becomes a **cohort — 6 weeks, 10 places maximum, £997 per place** |
| £247 Call Package | **Dead.** Standing rule barring it from public copy removed. |

### Cohort delivery

- Delivered as **live sessions**, not pre-recorded modules
- Every session recorded; recordings become a **lower-priced self-serve course**
  later (setup still to be scoped — Mark has flagged he'll need help with this)
- **Entry is via the waitlist** for now; dates set once there are enough sign-ups
- Four-part structure mapped across six weeks is **provisional** and needs
  Mark's confirmation

### Consequences still open

- **VSL V5 is a rewrite, not a re-record.** V4 sold the retired VOD. False
  Belief 3 needs reframing for the cohort buyer — the provisional wording in
  the VSL skill is a placeholder.
- **A new landing page is needed** for the cohort and the £197 call.
  `work-with-me.html` still reads correctly as a waitlist page in the meantime.
- **Scarcity rule reworded:** ten places is a real constraint. State the real
  limit plainly; never invent one.

---

## 27 August 2026 — YouTube craft changes (rows 2–15)

Applied in full. Summary of what changed:

- **Pull vs push titles.** Search-led titles are exempt from the intrigue and
  BENS requirements; clarity and keyword match win. Character limit, no-colon,
  no-"I" rules still apply.
- **Retitle-for-search** added as a distinct move from repackaging — a push
  video that has stopped being served gets a second life on the shelf.
- **Buyer-journey stage tag** added to the ideation brief, plus a pull/push
  type field, a named-concept field, and a real-example field.
- **At least one decision-aware video** to be commissioned — the channel
  currently has none.
- **The scar scale (S/C/A/R)** added to scripting. Turn the dial down at least
  one click per script. Adversity-level content is the biggest available upgrade.
- **Named concepts** — every script carries one idea that could only be Mark's,
  with a name, reused across videos.
- **Sarah Mitchell is now paid-room only.** YouTube uses real territory
  situations; a fictional area manager can't carry a scar.
- **Videos hand off to the next video rather than wrapping up.**
- **Offer CTA moves to roughly one video in four**, relaxing the every-video rule.
- **Lead magnet mention moves early**, after the first teaching moment, and
  must be diagnostic rather than instructional. None exists yet.
- **Comment section** treated as public office hours and as a topic source.
- **Live sessions deferred** — revisit at roughly 25+ views per video.
- **Borrowed statistics banned** (Mehrabian 7%, seven hours, eleven touchpoints).
- **Performance reviews** record enquiries per video and never judge an MYS
  video on views alone.

---

## 27 August 2026 — Audience pivot to Sales Managers

Row 16 resolved. **The channel now addresses the Sales Manager running a team
of B2B area managers**, each owning a territory. Regional/national sales
managers and heads of sales are the same buyer. The subject is how to run that
team properly — territory and coverage across several patches, a shared
account classification standard, coaching to a framework, reviews that produce
decisions.

Area managers and field salespeople are the team being managed, not the
viewer. They'll keep watching; the scripts don't speak to them.

**Why:** the thesis is a manager's problem. A rep can't change the coverage
model, the call-rate target, or what the CRM demands. Mark's own case study —
750 accounts cut to roughly half, 60% more business — is a management decision.

**Where it's going:** corporate clients and sales consultancy. The cohort and
the £197 call are the near-term offers and the credibility-builders for it.
In-house team engagements stay opportunistic until online credibility is built
— not a productised offer, and cohort places are not sold in bulk to one
employer (ten seats filled by one company breaks the room).

**Re-pointing load:** small. Nine videos are published and stay as they are.
Only video 10 (written) and video 11 (packaging locked) need re-pointing
before filming.

---

## Record corrections — 27 August 2026

Two errors introduced into the skills on 27 August, now fixed:

- The scripting skill claimed **no lead magnet exists**. One does — the free
  PDF at `mark-young-sales.kit.com/94eaa538e7`, already UTM-tagged in the
  descriptions. What's outstanding is moving the spoken mention earlier in
  the video, not building the asset.
- The title skill listed **five locked videos** as the published set. Nine are
  live, and three of the launch five were retitled at or after publishing.
  `VIDEOS.md` is now the reconciled record and should be checked before
  assuming anything about what's published.

---

## 28 August 2026 — Claude Code is the only surface

The five skills moved from `skills/` to `.claude/skills/`, the project skills
location. Claude Code sessions in this repo load them from there, and a project
skill overrides a same-named skill synced from the claude.ai account — so the
repo is authoritative and the skills sync can no longer revert rule changes.

**Mark works in Claude Code on this repo. Cowork is out of scope.** The account
copies of the five skills are stale (June 2026) and deliberately unused. They
are not maintained and should not be treated as a second source of truth.

Consequence: the only step needed when a skill changes is committing it.
Packaging `.skill` files is no longer part of the routine, though
`scripts/package-skills.sh` remains if the skills ever need to leave the repo.

Prompted by the sync incident earlier the same day, and by the Save skill
button being unavailable on Mark's account, which made account installs
awkward enough not to be worth maintaining for a surface he doesn't use.

---

## 28 August 2026 — Videos 12 and 13 locked

Two pull (search-led) scripts written for the Sales Manager audience and saved
to Notion under the project workflow page.

- **Video 12 — How Many Accounts Per Sales Rep Is Too Many?** Named concept:
  the coverage floor. Ends by handing off to Video 13.
- **Video 13 — How to Cut Customer Visits Without Losing Sales.** Named
  concept: the silent drop. Ends by handing off to Video 9.

Reviewed line by line through the artifact comment thread. Rules that came out
of that review and are now in the scripting skill: transitions must stand alone
without their brick headings; the lead magnet mention sits immediately after
brick one; "rep" is banned from all spoken and written copy; crutch words are
counted across the finished draft rather than judged line by line.

**Still open:** the Video 12 title carries "Sales Rep" because that is the
search phrase. Alternatives are recorded on the Notion page. Also unresolved:
whether the five remaining uses of "patch" should become "territory", and a
told/told echo in Video 13 brick 2.
