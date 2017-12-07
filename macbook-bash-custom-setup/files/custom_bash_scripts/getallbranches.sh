#Get all branches of a remote git repository locally
#Prune first
/usr/bin/git remote prune origin
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `
do
	/usr/bin/git branch --track ${branch#remotes/origin/} $branch
done