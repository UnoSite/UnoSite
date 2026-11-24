---
name: unosite-profil
description: Knowledge about UnoSite/UnoSite (GitHub profile README in linktree style). Use when changing the profile, the link buttons, the stats cards or the workflow, or when adding a new link.
---

# UnoSite profile

Everything in this repo is written in **English**. The repo is **public**: follow the rules in `CLAUDE.md` – no personal data, ever.

## Structure
- `README.md` – the profile page. Order: banner (`assets/top.png`) → greeting → link buttons → `<details>` with stats.
- `assets/links/*.svg` – link buttons (420×56, dark `#161b22`, lime `#cad404` border/text).
- `profile/*.svg` – stats, languages and trophy cards. **Never edit by hand**: generated nightly by `.github/workflows/update-profile-cards.yml`, which commits straight to `main` ("Update profile cards").
- The streak card is loaded live from streak-stats.demolab.com (holi-theme, `cad404`).

## Current links
| Button | File | URL |
|---|---|---|
| IsItPayday | `isitpayday.svg` | https://github.com/UnoSite/IsItPayday |
| All projects | `repos.svg` | https://github.com/UnoSite?tab=repositories |
| Follow UnoSite on GitHub | `github.svg` | https://github.com/UnoSite |

Only link to public repos.

## Add a link
1. `.claude/skills/unosite-profil/new-button.sh <filename> "<Label>"` (the arrow is added automatically).
2. Insert in `README.md` next to the other buttons:
   ```html
   <p align="center">
       <a href="URL">
           <img src="assets/links/<filename>.svg" width="420" alt="<Label>" />
       </a>
   </p>
   ```
3. Update the table above.
No visual check needed – the template is tested.

## Known issues
- `assets/top.png` (1920×650) is completely white.
- No website/social media links provided yet.

## Git
- Work on the branch the session specifies; push with `git push -u origin <branch>`.
- Commit messages, PR titles and descriptions in English.
