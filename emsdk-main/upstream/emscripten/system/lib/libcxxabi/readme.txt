llvm's libcxxabi
----------------

These files are from the llvm-project based on release 15.0.0.

We maintain a local fork of llvm-project that contains any emscripten
specific patches:

  https://github.com/emscripten-core/llvm-project

The current patch is based on the emscripten-libs-15.0.0 tag.

Update Instructions
-------------------

Run `system/lib/update_libcxxabi.py path/to/llvm-root`

Modifications
-------------

For a list of changes from upstream see the libcxxabi files that are part of:

https://github.com/llvm/llvm-project/compare/llvmorg-15.0.0...emscripten-core:emscripten-libs-15.0.0
