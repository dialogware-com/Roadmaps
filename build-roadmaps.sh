#/bin/bash -e
if [[ -z $GITHUB_TOKEN ]]; then
    echo 'NO GITHUB_TOKEN SET.'
    echo 'Plese set one using \`export GITHUB_TOKEN=\`'
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



for dir in './output/PocketBook' './output/Website' './output/Ethereum-Contracts' #'./output/ELTBOT20'
do
mkdir -p $dir;
PROJ_NAME=$(echo -ne $dir | sed 's/\.\/output\///g');
touch "'./output/'$PROJ_NAME'/README.md'" 2>/dev/null
done

#Make Output dirs (NOTE: (oli) Re-Enable ELTBOT when we figure out the roadmap gen issue)

#Generate 4 README MD project roadmap breakdowns.
echo "[build-roadmaps]: Building Ethereum-Contracts"
node index.js ./project-configs/Ethereum-Contracts.conf.js -gsp > ./output/Ethereum-Contracts/README.md
outputEmoji
sleep 3
# NOTE (oli): This fails (Because project is a fork?)
# echo "[build-roadmaps]: Building ELTBOT20"
# node index.js ./project-configs/ELTBOT20.conf.js -gsp > ./output/ELTBOT20/README.md
# outputEmoji
# sleep 3
echo "[build-roadmaps]: Building Website"
node index.js ./project-configs/HODLWebsite.conf.js -gsp > ./output/Website/README.md
outputEmoji
sleep 3
echo "[build-roadmaps]: Building PocketBook"
node index.js ./project-configs/PocketBook.conf.js -gsp > ./output/PocketBook/README.md
outputEmoji

