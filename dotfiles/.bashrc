REL_DIR=$( cd -- "$( dirname -- "$(readlink -f "${BASH_SOURCE[0]}" || ${BASH_SOURCE[0]})" )" &> /dev/null && pwd )

for config in $REL_DIR/bashrc/??*; do
    source $(realpath $config)
done

unset REL_DIR