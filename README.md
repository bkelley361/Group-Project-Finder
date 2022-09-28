# Group-Project-Finder
Group Project App for CIS 350.

## Documentation
The group project finder app will have flutter running the frontend and firebase running the backend. The reason we chose flutter and firebase is because we wanted to get some experience with these technologies and because Google developed both of them. This will allow for seamless integration of the database.

The app will complete the following.
1. Users can login or register an account (will only store usernames for now)
2. Users can join, create, and view different classes
3. Users can edit their profile
4. Users will be able to swipe between different classmates in each class until a group is formed

### UML Diagrams
1. [Class Diagram](https://lucid.app/lucidchart/efb5ee8e-e2a1-45ec-9228-3cf1b21c78d6/edit?invitationId=inv_c74757d6-ceee-48f8-896a-855fcdb7636e&page=TNOUg8anujOd#)
2. [Use Case Diagram](https://lucid.app/lucidchart/44775172-df9e-46d7-8b71-cdf8878c58c0/edit?viewport_loc=-805%2C110%2C2841%2C1207%2C0_0&invitationId=inv_226da821-82d7-454c-aa1a-0da602cd46f9#)
3. [Sequence Diagram](https://lucid.app/lucidchart/2ba0f7d0-8e82-4dae-a54e-5e5d5720933b/edit?viewport_loc=-172%2C-22%2C1737%2C786%2C0_0&invitationId=inv_04471817-efe4-46e9-97a3-5a5980e9b12d#)

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
