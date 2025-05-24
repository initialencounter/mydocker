shopt -s nullglob extglob
_SCRIPT_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
declare -a _PARTS=( "${_SCRIPT_DIR}/entrypoint.d"/*@(.txt|.sh) )
shopt -u nullglob extglob

print_repeats() {
  local -r char="$1" count="$2"
  local i
  for ((i=1; i<=$count; i++)); do echo -n "$char"; done
  echo
}

print_banner_text() {
  # $1: Banner char
  # $2: Text
  local banner_char=$1
  local -r text="$2"
  local pad="${banner_char}${banner_char}"
  print_repeats "${banner_char}" $((${#text} + 6))
  echo "${pad} ${text} ${pad}"
  print_repeats "${banner_char}" $((${#text} + 6))
}

# Execute the entrypoint parts
for _file in "${_PARTS[@]}"; do
  case "${_file}" in
    *.txt) cat "${_file}";;
    *.sh)  source "${_file}";;
  esac
done

echo

# This script can either be a wrapper around arbitrary command lines,
# or it will simply exec bash if no arguments were given
if [[ $# -eq 0 ]]; then
  exec "/bin/bash"
else
  exec "$@"
fi