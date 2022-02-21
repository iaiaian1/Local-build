# Working DIR
FOLDER=sample
mkdir ${FOLDER} && cd ${FOLDER}

# Manifest link of the rom here
MANIFEST=https://github.com/Project-Awaken/android_manifest
MANIFESTBRANCH=12

# Your local manifest
LOCALMANIFEST=https://github.com/iaiaian1/local-manifests
LOCALMANIFESTBRANCH=Awaken-12.0

# rom init
repo init --depth=1 --no-repo-verify -u ${MANIFEST}.git -b ${MANIFESTBRANCH} -g default,-mips,-darwin,-notdefault
# clone your manifest
git clone ${LOCALMANIFEST}.git --depth 1 -b ${LOCALMANIFESTBRANCH} .repo/local_manifests
# the sync
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8