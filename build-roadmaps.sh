if [[ -z $GITHUB_TOKEN ]]; then
    echo 'NO GITHUB_TOKEN SET.'
    echo 'Plese set one using \`export GITHUB_TOKEN=\`'
    exit 1
fi

yarn;


#Make Output dirs
mkdir -p ./PocketBook ./Website ./EthereumContracts ./ELTBOT20
#Generate 4 README MD project roadmap breakdowns.
echo "[build-roadmaps]: Building EthereumContracts"
node index.js ./HODL-DAO/EthereumContracts.conf.js -gsp > ./EthereumContracts/README.md
if [[ $? -eq 0 ]]; then 
    echo "[build-roadmaps]: ✅";
else 
    echo "[build-roadmaps]: ❌";
fi
echo "[build-roadmaps]: Building ELTBOT20"
node index.js ./HODL-DAO/ELTBOT20.conf.js -gsp > ./ELTBOT20/README.md
if [[ $? -eq 0 ]]; then 
    echo "[build-roadmaps]: ✅";
else 
    echo "[build-roadmaps]: ❌"
fi
echo "[build-roadmaps]: Building Website"
node index.js ./HODL-DAO/HODLWebsite.conf.js -gsp > ./Website/README.md
if [[ $? -eq 0 ]]; then 
    echo "[build-roadmaps]: ✅";
else 
    echo "[build-roadmaps]: ❌"
fi
echo "[build-roadmaps]: Building PocketBook"
node index.js ./HODL-DAO/PocketBook.conf.js -gsp > ./PocketBook/README.md
if [[ $? -eq 0 ]]; then 
    echo "[build-roadmaps]: ✅";
else 
    echo "[build-roadmaps]: ❌"
fi
