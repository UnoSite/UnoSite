---
name: unosite-profil
description: Viden om UnoSite/UnoSite (GitHub-profil-README i linktree-stil). Brug når profilen, link-knapperne, stats-kortene eller workflowet skal ændres, eller når der skal tilføjes et nyt link.
---

# UnoSite-profilen

Chat altid på dansk. Repoet er **offentligt** – skriv aldrig e-mail eller andre private oplysninger i filerne.

## Struktur
- `README.md` – profilsiden. Rækkefølge: banner (`assets/top.png`) → hilsen → link-knapper → `<details>` med stats.
- `assets/links/*.svg` – link-knapperne (420×56, mørk `#161b22`, kant/tekst limegrøn `#cad404`).
- `profile/*.svg` – stats-, sprog- og trofækort. **Rør dem ikke i hånden**: de genereres hver nat af `.github/workflows/update-profile-cards.yml`, som committer direkte til `main` ("Opdater profilkort").
- Streak-kortet hentes live fra streak-stats.demolab.com (holi-theme, `cad404`).

## Nuværende links
| Knap | Fil | URL |
|---|---|---|
| IsItPayday | `isitpayday.svg` | https://github.com/UnoSite/IsItPayday |
| Alle projekter | `repos.svg` | https://github.com/UnoSite?tab=repositories |
| Følg UnoSite på GitHub | `github.svg` | https://github.com/UnoSite |

Andre repos under UnoSite: Hama-Perle-Lager, fuelprice-predictor (private), MyFactory (privat, arkiveret). Link ikke til private repos.

## Tilføj et link
1. `.claude/skills/unosite-profil/new-button.sh <filnavn> "<Tekst>"` (pilen tilføjes automatisk).
2. Indsæt i `README.md` ved de andre knapper:
   ```html
   <p align="center">
       <a href="URL">
           <img src="assets/links/<filnavn>.svg" width="420" alt="<Tekst>" />
       </a>
   </p>
   ```
3. Opdatér tabellen ovenfor.
Visuel kontrol er normalt unødvendig – skabelonen er afprøvet.

## Kendte punkter
- `assets/top.png` (1920×650) er helt hvid – brugeren er gjort opmærksom på det.
- Brugeren har ikke givet links til hjemmeside/sociale medier endnu.

## Git
- Arbejd på den branch sessionen angiver, push med `git push -u origin <branch>`.
- PR #2 (linktree-layoutet) er oprettet mod `main`.
