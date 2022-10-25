#!/bin/bash

protoc_gen_doc_DIR=$1
if [ $# -lt 1 ] || [ ! -d $protoc_gen_doc_DIR ]; then
  protoc_gen_doc_DIR="./third_parties/protoc-gen-doc/" # the last slash character '/' is important, for the find, later
fi
proto_files_root_DIR=$2
if [ $# -lt 2 ] ||  [ ! -d $proto_files_root_DIR ]; then
  proto_files_root_DIR="./"
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

make -C $protoc_gen_doc_DIR build

protoc --plugin=$protoc_gen_doc_DIR/bin/protoc-gen-doc --doc_opt=$doc_filetype,$doc_filename --doc_out=$doc_output_DIR \
`find $proto_files_root_DIR -type f -name "*.proto" -not -path "$protoc_gen_doc_DIR*"`

DEFAULT_COLOR="\e[0;00m"
DFLT_CLR=$DEFAULT_COLOR
U_GREEN="\e[7;32m"
echo -e $U_GREEN Generated documentation $DFLT_CLR