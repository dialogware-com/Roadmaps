#/bin/bash -e
[ -z $GITHUB_TOKEN ] && GITHUB_TOKEN=$(cat .github_token)
if [[ -z $GITHUB_TOKEN ]]; then
    echo 'NO GITHUB_TOKEN SET.'
    echo 'Please set one using \`export GITHUB_TOKEN=\`'
    exit 1
fi

yarn;

function outputEmoji() {
if [[ $? -eq 0 ]]; then
    echo "[build-roadmaps]: ✅";
else
    echo "[build-roadmaps]: ❌";
fi
}



#for dir in './output/dialogware' './output/Website' './output/Ethereum-Contracts' './output/DoubleHelix'
for dir in './output/dialogware'
do
mkdir -p $dir;
PROJ_NAME=$(echo -ne $dir | sed 's/\.\/output\///g');
touch "'./output/'$PROJ_NAME'/README.md'" 2>/dev/null
done

#Make Output dirs (NOTE: (oli) Re-Enable ELTBOT when we figure out the roadmap gen issue)

#Generate 4 README MD project roadmap breakdowns.
echo "[build-roadmaps]: Building dialogware roadmap"
node index.js ./project-configs/dialogware.conf.js -gsp > ./output/dialogware/README.md
outputEmoji
sleep 3

