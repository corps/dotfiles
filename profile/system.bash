function isDarwin() {
  [[ $(uname -s) =~ "Darwin" ]]
}

function isLinux() {
  [[ $(uname -s) =~ "Linux" ]]
}

function isWsl() {
  ls /mnt/c/ || ls /c/ &> /dev/null
}

if isLinux; then
  export IS_LINUX=1
  export DROPBOX_HOME=$HOME/Dropbox
elif isDarwin; then
  export IS_DARWIN=1
  export DROPBOX_HOME=$HOME/Dropbox
elif isWsl; then
  export IS_WSL=1
  export DROPBOX_HOME=$HOME/winhome/Dropbox
fi
