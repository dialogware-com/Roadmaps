#/bin/bash -e
firefox "https://github.com/settings/tokens/new?description=ROADMAP_GitHub&scopes=repo%2Cgist%2Cread%3Aorg%2Cworkflow"
GITHUB_TOKEN=$1
[ -z $GITHUB_TOKEN ] && read -p "SET GITHUB_TOKEN: " GITHUB_TOKEN
export GITHUB_TOKEN=$GITHUB_TOKEN
echo $GITHUB_TOKEN
#TOKENFILE="~/.github_token"
TOKENFILE=".github_token"
echo "save token: $TOKENFILE"
echo $GITHUB_TOKEN > $TOKENFILE
echo $TOKENFILE > .gitignore

