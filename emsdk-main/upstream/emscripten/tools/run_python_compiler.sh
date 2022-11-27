#!/bin/sh
# Copyright 2020 The Emscripten Authors.  All rights reserved.
# Emscripten is available under two separate licenses, the MIT license and the
# University of Illinois/NCSA Open Source License.  Both these licenses can be
# found in the LICENSE file.
#
# Entry point for running python scripts on UNIX systems.
#
# Automatically generated by `create_entry_points.py`; DO NOT EDIT.
#
# To make modifications to this file, edit `tools/run_python_compiler.sh` and
# then run `tools/create_entry_points.py`

# $PYTHON -E will not ignore _PYTHON_SYSCONFIGDATA_NAME an internal
# of cpython used in cross compilation via setup.py.
unset _PYTHON_SYSCONFIGDATA_NAME

if [ -z "$PYTHON" ]; then
  PYTHON=$EMSDK_PYTHON
fi

if [ -z "$PYTHON" ]; then
  PYTHON=$(command -v python3 2> /dev/null)
fi

if [ -z "$PYTHON" ]; then
  PYTHON=$(command -v python 2> /dev/null)
fi

if [ -z "$PYTHON" ]; then
  echo 'unable to find python in $PATH'
  exit 1
fi

if [ -z "$_EMCC_CCACHE" ]; then
  exec "$PYTHON" -E "$0.py" "$@"
else
  unset _EMCC_CCACHE
  exec ccache "$0" "$@"
fi
