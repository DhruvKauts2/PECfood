How to use github...
1) Make a github account.
2) Download git from https://git-scm.com/downloads
3) In your terminal navigate to the folder you wanna have the code repository in, once there use git clone https://github.com/DhruvKauts2/PECfood.git this will create the repo in the folder you're in.Create all the files you're gonna use for the project in the folder in which you'vr cloned the repo.

There are 3 steps to pushing code from your device to the online repo. 1)ADD 2)COMMIT 3)PUSH

1) When you've created the files use git add fileName to add the file, the file is being tracked. If you wanna add all your files to the staging area then use git add .
Use git status to see which files are being tracked.
2) Now you need to push the file from tracking area to staging area, use git commit -m "some comment about the changes you've made" , make sure the comments are relevant coz in case of a massive f*** up the only way we can retreive the right files is by tracking previous commits.
3) To transfer files from the staging area to the online repo just use git push.

To pull code use the terminal to navigate to the folder you've chosen to make your repo in, then use git pull , this will automatically update changes in the respective files in your local repo. 

Make sure to use the same names as the files in the repo. If one person is editing a file file1 and pushes the code and another person has a file file2 then if the second person uses git pull a file file1 will be created in their device, this can cause issues if both ppl are trying to edit file1.

Confict interests will emerge if multiple people try to edit the same line in the same file. You'll be able to see this conflict and there's no way to resolve it, if it does arise then let everyone else know on the whatsapp group so we can manage it.

