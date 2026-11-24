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

Allowed: the author name "Dennis M" in the git history and the GitHub username "UnoSite".

See the `unosite-profil` skill for how the repo is structured.
