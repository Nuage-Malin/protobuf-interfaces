#!/bin/bash

BOLD="\e[1m"
RESET="\e[0m"
ITALIC="\e[3m"
UNDERLINE="\e[4m"
DEFAULT_COLOR="\e[0;00m"
DFLT_CLR=$DEFAULT_COLOR
U_GREEN="\e[7;32m"
U_RED="\e[7;31m"

check_exit_failure()
{
    if [ $? -ne 0 ]
    then
        echo -e "$1" 1>&2
        exit 1
    fi
}

# HELP message
for arg in "$@"; do
  if [ "$arg" == "-h" ] || [ "$arg" == "--help" ]; then
    echo "Usage: $0 [protoc_gen_doc_DIR] [proto_files_root_DIR] [doc_filename] [doc_filetype] [doc_output_DIR]"
    echo -e "\t${BOLD}protoc_gen_doc_DIR${RESET}:\tThe directory where the protoc-gen-doc is installed"
    echo -e "\t${BOLD}proto_files_root_DIR${RESET}:\tThe directory where the proto files are located"
    echo -e "\t${BOLD}doc_filename${RESET}:\t\tThe name of the generated documentation file"
    echo -e "\t${BOLD}doc_filetype${RESET}:\t\tThe type of the generated documentation file (markdown, html, json or docbook)"
    echo -e "\t${BOLD}doc_output_DIR${RESET}:\t\tThe directory where the generated documentation file is located"
    echo ""
    echo -e "\tIf no argument is provided, the default values are used."
    echo -e "\tIf an argument is provided, but it is not valid, the default value is used."
    echo ""
    echo -e "\t${UNDERLINE}The default values are:$RESET"
    echo -e "\t   ${BOLD}protoc_gen_doc_DIR${RESET}: ${ITALIC}\t./third_parties/protoc-gen-doc/"$RESET
    echo -e "\t   ${BOLD}proto_files_root_DIR${RESET}: ${ITALIC}./src"$RESET
    echo -e "\t   ${BOLD}doc_filename${RESET}: ${ITALIC}\tDOCUMENTATION.md"$RESET
    echo -e "\t   ${BOLD}doc_filetype${RESET}: ${ITALIC}\tmarkdown"$RESET
    echo -e "\t   ${BOLD}doc_output_DIR${RESET}: ${ITALIC}\t./"$RESET
    exit 0
  fi
done

# Check requirements

## git
if ! command -v git &> /dev/null
then
    echo -e "${BOLD}git$RESET could not be found"
    exit 1
fi

## make
if ! command -v make &> /dev/null
then
    echo -e "${BOLD}make$RESET could not be found"
    exit 1
fi

## git
if ! command -v git &> /dev/null
then
    echo -e "${BOLD}git$RESET could not be found"
    exit 1
fi

## protoc
if ! command -v protoc &> /dev/null
then
    echo -e "${BOLD}protoc$RESET could not be found"
    exit 1
fi

# RUN
protoc_gen_doc_DIR=$1
if [ $# -lt 1 ] || [ ! -d $protoc_gen_doc_DIR ]; then
  protoc_gen_doc_DIR="./third_parties/protoc-gen-doc/" # the last slash character '/' is important, for the find, later
fi
proto_files_root_DIR=$2
if [ $# -lt 2 ] ||  [ ! -d $proto_files_root_DIR ]; then
  proto_files_root_DIR="./src"
fi
doc_filename=$3
if [ $# -lt 3 ]; then
  doc_filename="DOCUMENTATION.md"
fi
doc_filetype=$4
if [ $# -lt 4 ] || ( [ $doc_filetype != "docbook" ] && [ $doc_filetype != "html" ] && [ $doc_filetype != "markdown" ] \
&&  [ $doc_filetype != "json" ] );
then
  doc_filetype="markdown"
  ## can be docbook, html, markdown or json
fi
doc_output_DIR=$5
if [ $# -lt 5 ] ||  [ ! -d $doc_output_DIR ]; then
  doc_output_DIR="./"
fi

# Clone submodules
echo "Cloning submodules..."
if [ ! -d $protoc_gen_doc_DIR ]; then
    # First clone
    git submodule update --init
else
    git submodule update
fi
check_exit_failure "${U_RED}Submodules cloning failed$DFLT_CLR"
echo "Submodules cloned."

# Build protoc-gen-doc
echo "Building protoc-gen-doc..."
make -C $protoc_gen_doc_DIR build
check_exit_failure "${U_RED}protoc-gen-doc build failed$DFLT_CLR"
echo "protoc-gen-doc built."

# Generate documentation
echo "Generating documentation..."
protoc --plugin=$protoc_gen_doc_DIR/bin/protoc-gen-doc --doc_opt=$doc_filetype,$doc_filename --doc_out=$doc_output_DIR  \
    --proto_path=$proto_files_root_DIR                                                                                  \
    `find $proto_files_root_DIR -type f -name "*.proto" -not -path "$protoc_gen_doc_DIR*"`

check_exit_failure "${U_RED}Documentation generation failed$DFLT_CLR"
echo -e $U_GREEN Documentation generated successfully$DFLT_CLR