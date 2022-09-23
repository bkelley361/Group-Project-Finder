# Group-Project-Finder
Group Project App for CIS 350.

### Links for project
1. Jira - https://groupprojectfinder.atlassian.net/jira/software/projects/GPF/boards/1
2. Flutter Documentation - https://docs.flutter.dev/get-started/install/windows

### Install and Setup
Check this link to get flutter set up
* https://docs.flutter.dev/get-started/install

Use this link to create an app to see if flutter is operational
* https://docs.flutter.dev/get-started/test-drive?tab=terminal#create-app


### For creating new branches and adding them to the main
1. Create a new branch for each new feature
From this point, each member of the group will create a new branch for any feature they are adding to the project. Do this by entering either of these two options:

```
git checkout -b branchName – This creates the branch and checks it out
or

git checkout branchName – This checks out the branch
```
Be sure to always check which branch you are on using “git status” before you begin working!

2. Merge your branch
Once your branch is ready to be merged to master, follow these steps.

While in your branch you will 
```
git add . 

git commit -m “message”

git push origin <branch name> – This creates the branch remotely and pushes to that branch on GitHub
Go to GitHub and create a new pull request
```

You can compare your branch to any other branch, but you will most likely be comparing to master

You can assign a specific person or not

You will not be able to approve your own pull request 

Once someone reviews the pull request. they will resolve any issues or conflicts that come up and approve the pull request to be merged into the master
