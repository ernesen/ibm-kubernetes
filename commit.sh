#!/bin/sh

# git add -A ## both combined into a single command <git commit -a -m "msg">
# helm package myemp/

if [ "$1" != "" ]; then
    #echo "git commit -m \"$1\""
	git commit -a -m "$1"
else
    #echo "git commit -m \"latest updates to the Kubernetes Webinar Series\""
	git commit -a -m "Adding the latest update of icp-tech-talks demo"
fi

# git pull origin master ## only applicable if I had more than one user using this repo.
#git pull origin master
#git config remote.origin.url https://${GITHUBUSER}:${PASSWORD}@github.com/${GITHUBUSER}/${REPONAME}.git

git pull origin master
git push origin master
