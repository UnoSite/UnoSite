---
name: unosite-profil
description: Knowledge about UnoSite/UnoSite (GitHub profile README and the unosite.dk GitHub Pages site, both in linktree style). Use when changing the profile, the website, the link buttons, DNS for unosite.dk, or when adding a new link.
---

# UnoSite profile

Everything in this repo is written in **English**. The repo is **public**: follow the rules in `CLAUDE.md` – no personal data, ever.

## Structure
- `README.md` – the profile page. Order: banner (`assets/top.png`) → greeting → link buttons.
- `index.html` – the website at https://unosite.dk (GitHub Pages, deployed from `main` / root). Self-contained HTML+CSS, light/dark via `prefers-color-scheme`, avatar from `github.com/UnoSite.png`.
- `CNAME` (`unosite.dk`) and `.nojekyll` – required for Pages; don't remove.
- `assets/links/*.svg` – README link buttons (420×56, dark `#161b22`, lime `#cad404` border/text).
- GitHub stats/streak/trophy cards were removed on purpose – don't add them back unless asked.

## Current links
| Button | File | URL |
|---|---|---|
| Home Assistant integration - IsItPayday | `isitpayday.svg` | https://github.com/UnoSite/IsItPayday |
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
3. Add the same link to `index.html`: `<li><a class="link" href="URL"><Label> →</a></li>`.
4. Update the table above.

**Links live in two places (README.md and index.html) – always update both.**
No visual check needed – the template is tested.

## DNS (Simply.com, product `unosite.dk`)
Apex `@`: ALIAS → `unosite.github.io`. `www`: CNAME → `unosite.github.io`. Both have the comment "GitHub Pages". Don't touch other records (mail, Stripe, Pangolin subdomains etc.).

## Known issues
- `assets/top.png` (1920×650) is completely white.
- No website/social media links provided yet.

## Git
- Work on the branch the session specifies; push with `git push -u origin <branch>`.
- Commit messages, PR titles and descriptions in English.
