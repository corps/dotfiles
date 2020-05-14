DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for file in $DIR/*.bash; do
  if ! [[ "$(readlink -f $file)" == "$(readlink -f ${BASH_SOURCE[0]})" ]]; then
    source $file
  fi
done
