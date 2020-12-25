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


#Make Output dirs (NOTE: (oli) Re-Enable ELTBOT when we figure out the roadmap gen issue)

mkdir -p ./PocketBook ./Website ./EthereumContracts #./ELTBOT20


#Generate 4 README MD project roadmap breakdowns.
echo "[build-roadmaps]: Building EthereumContracts"
node index.js ./project-configs/EthereumContracts.conf.js -gsp > ./EthereumContracts/README.md
outputEmoji

# NOTE (oli): This fails (Because project is a fork?)
# echo "[build-roadmaps]: Building ELTBOT20"
# node index.js ./project-configs/ELTBOT20.conf.js -gsp > ./ELTBOT20/README.md
# outputEmoji

echo "[build-roadmaps]: Building Website"
node index.js ./project-configs/HODLWebsite.conf.js -gsp > ./Website/README.md
outputEmoji

echo "[build-roadmaps]: Building PocketBook"
node index.js ./project-configs/PocketBook.conf.js -gsp > ./PocketBook/README.md
outputEmoji
