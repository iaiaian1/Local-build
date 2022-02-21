# change necessary things. lunch commands and make commands

# build rom
source build/envsetup.sh
lunch derp_vayu-user
# More exports here
# export SELINUX_IGNORE_NEVERALLOWS=true
# More exports here
export TZ=Asia/Dhaka #put before last build command
mka derp