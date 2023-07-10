#!/bin/bash
FILE=$1
TEMPLATE=$2
CONFIG_PATH=~/.touchc
DEFAULT_TEMPLATE_FILE=_default
DEFAULT_TEMPLATE=c++
BUILTIN_TEMPLATE_CPP="#include <bits/stdc++.h>\n\
using namespace std;\n\
\n\
int main()\n\
{\n\x20\x20\x20\x20\n\x20\x20\x20\x20return 0;\n\
}"
BUILTIN_TEMPLATE_BASH="#!/bin/bash\n"

if [ ! -d $CONFIG_PATH ]; then # First run
    mkdir $CONFIG_PATH
    echo $DEFAULT_TEMPLATE >"${CONFIG_PATH}/${DEFAULT_TEMPLATE_FILE}"
    echo -e $BUILTIN_TEMPLATE_CPP >"${CONFIG_PATH}/c++"
    echo -e $BUILTIN_TEMPLATE_BASH >"${CONFIG_PATH}/bash"
fi

if [ -z $TEMPLATE ]; then # Use default
    if [ ! -e "${CONFIG_PATH}/${DEFAULT_TEMPLATE_FILE}" ]; then
        echo "touchc.sh: Default template not specified, give a template name or edit '~/.touchc/_default'"
        exit
    fi
    TEMPLATE=$(cat "${CONFIG_PATH}/${DEFAULT_TEMPLATE_FILE}")
fi

if [ ! -e "${CONFIG_PATH}/${TEMPLATE}" ]; then
    echo "touchc.sh: Unknown template '${TEMPLATE}'"
    exit
fi

if [ -z $FILE ]; then
    echo "touchc.sh: Please give a file name"
    exit
fi

cp ${CONFIG_PATH}/${TEMPLATE} $FILE
code $FILE
