#!/bin/sh

ssh-keygen -t rsa -b 4096 -C "ravuthz@gmail.com"

eval "$(ssh-agent -s)"

ls -lah ~/.ssh

ssh-add ~/.ssh/id_rsa

sudo apt install xclip -y

xclip -sel clip < ~/.ssh/id_rsa.pub

ssh -T git@github.com

ssh -T git@gitlab.com

ssh -T git@bitbucket.com


# ~/.ssh/config
# # GitLab.com
# Host gitlab.com
#   PreferredAuthentications publickey
#   IdentityFile ~/.ssh/gitlab_com_rsa

# # Private GitLab instance
# Host gitlab.company.com
#   PreferredAuthentications publickey
#   IdentityFile ~/.ssh/example_com_rsa

# # User1 Account Identity
# Host <user_1.gitlab.com>
#   Hostname gitlab.com
#   PreferredAuthentications publickey
#   IdentityFile ~/.ssh/<example_ssh_key1>

# # User2 Account Identity
# Host <user_2.gitlab.com>
#   Hostname gitlab.com
#   PreferredAuthentications publickey
#   IdentityFile ~/.ssh/<example_ssh_key2>

# git clone git@<user_1.gitlab.com>:gitlab-org/gitlab.git
# git remote set-url origin git@<user_1.gitlab.com>:gitlab-org/gitlab.git

# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# https://docs.gitlab.com/ee/ssh/