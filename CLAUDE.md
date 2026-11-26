# UnoSite – rules

**Language:** Everything in this repo is written in English – files, commit messages, PR titles/descriptions and comments.

**ABSOLUTE RULE: No personal data may ever enter this repo.**
The repo is public. This applies to files, commit messages, PR texts, comments and branch names.

Never write:
- Email addresses (except GitHub `noreply` addresses), phone numbers, postal addresses
- Full names, dates of birth, national ID numbers
- Tokens, keys, passwords or other secrets
- Information from the user's account, other sessions or private repos

Check before every commit: `git diff --cached` must contain none of the above.
When in doubt, leave it out and ask the user.

**No AI attribution.** Nothing may show that Claude or Claude Code was used: no `Co-Authored-By: Claude` or `Claude-Session` lines in commit messages, no "Generated with Claude Code" footers or session links in PR texts. When squash merging, write the commit message by hand without such lines.

Allowed: the author name "Dennis M" in the git history and the GitHub username "UnoSite".

See the `unosite-profil` skill for how the repo is structured.

## Shorthand commands from the user
- **"PR"** → create a pull request for the current branch against `main`.
- **"merge"** → merge the open pull request (use squash merge).
