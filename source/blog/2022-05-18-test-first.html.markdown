---

title: Basic Git Commands
date: 2022-05-18 19:37 UTC
tags: git

---

# Basic Git Commands
**To initialize a project as a Master**
---
`git init`
<br > 
**Current status of the folder**
---
`git status`
<br >
**add file to the staging area in the repository** --- 
`git add .`
<br >
**commit the changes to the git repository** ---
`git commit -m"comment here"`
<br >
**see a brief log of commits** ---
`git log --oneline`
<br >
**checkout the file from an older commit** ---
`git checkout <commit> <file>`
<br >
**Unstage a staged file, but leave working directory unchanged** ---
`git reset HEAD <file>`
<br >
**reset the staging area to the last commit without disturbing the working directory** ---
`git reset`