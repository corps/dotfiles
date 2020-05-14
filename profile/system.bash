function isDarwin() {
  [[ $(uname -s) =~ "Darwin" ]]
}

function isLinux() {
  [[ $(uname -s) =~ "Linux" ]]
}

function isWsl() {
  ls /mnt/c/ &> /dev/null || ls /c/ &> /dev/null
}

if isWsl; then
  export IS_WSL=1
  export DROPBOX_HOME=$HOME/winhome/Dropbox
elif isLinux; then
  export IS_LINUX=1
  export DROPBOX_HOME=$HOME/Dropbox
elif isDarwin; then
  export IS_DARWIN=1
  export DROPBOX_HOME=$HOME/Dropbox
else
  export UNKNOWN=1
fi
