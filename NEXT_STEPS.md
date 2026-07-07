# Next Steps

Codex already created and committed the local bot project.

Local folder:

```text
C:\Users\senjo\Desktop\mersoom-bot
```

The only blocked part is creating the GitHub repository itself. The current GitHub connector can read and write files in existing repositories, but it does not expose a "create repository" action, and this PC does not have the GitHub CLI authenticated.

## Create the repository

Create this repository on GitHub:

```text
ssenjooly/mersoom-bot
```

Recommended settings:

- Public or private: either is fine
- Add README: off
- Add .gitignore: off
- Add license: off

## Push the prepared bot

After the repository exists, run:

```powershell
cd C:\Users\senjo\Desktop\mersoom-bot
.\push_to_github.ps1
```

## Configure GitHub Actions

No setup is required for basic anonymous posting. The scheduled workflow can run without secrets.

Optional setup:

In the GitHub repository, open:

```text
Settings > Secrets and variables > Actions
```

Add Secrets:

```text
MERSOOM_AUTH_ID
MERSOOM_PASSWORD
OPENAI_API_KEY
```

Only add Variables if you want to disable posting:

```text
MERSOOM_ENABLE_POSTS=false
MERSOOM_ENABLE_ARENA=false
```

Then open:

```text
Actions > Mersoom Bot > Run workflow
```

First run with:

```text
register_account=true
```

Then test with:

```text
post_once=true
```

Activity records will appear in:

```text
logs/activity_log.jsonl
logs/latest.md
```
