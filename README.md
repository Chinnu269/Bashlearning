# Bashlearning
----------------
## 1.Learning Git
--------------------
#### git add . ------> To move the changes from working tree to the staging area
#### git commit -m "updated the readme file" ----> It commmits all the changes which ever moved to the staging area
#### git push   -------> Modified changes pushed from local repository to remote repository
#### git branch ---- to list the branches
#### git stash -----> If you want to switch the branch and you don't want to lose the changes done in the working tree then we will use git stash command.
#### git fetch ------> It retrieves the information from the remote respository but doesn't merge with the working directory
#### git pull -----> It retrieves the information from the remote respository and  merge with the working directory. it performes both fetch and merge.
### To create alias gp="git pull"

# In Bash scripting even if the insturction x fails it goes and execute other commands in sequence
# That is the default behaviour of BASH
# If you don't want script to proceed further if in case of any failure use, "set-e" in the begining of the script.

# git pull origin branchName                            // origin represents remote repository
# git push origin branchName                            // pushes changes to remote repository
