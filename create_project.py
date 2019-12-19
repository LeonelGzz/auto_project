import sys
import os
from github import Github

username = "" #Insert your github mail here
password = "" #Insert your github password here

repoName = str(sys.argv[1])

def create_project():
    g = Github(username, password)
    user = g.get_user()
    repo = user.create_repo(repoName)

    print("Succesfully created repository {}".format(repoName))


if __name__ == "__main__":
    create_project()
