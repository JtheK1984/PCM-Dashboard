git checkout --orphan temp
git add -A
git commit -m "Initial commit"
git branch -D main
git branch -m main
git push --force origin main


git checkout --orphan temp
git add -A
git commit -m "Initial commit"
git branch -D release
git branch -m release
git push --force origin release