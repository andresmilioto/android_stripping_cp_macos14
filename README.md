```sh
./build.sh
cp build/libtest.so build/libtest.so.bk
```
copy corrupts file
```sh
$ file build/libtest.so
build/libtest.so: ELF 32-bit LSB shared object, ARM, EABI5 version 1 (SYSV), dynamically linked, BuildID[sha1]=01c6c7e48e25b9be532dc091337a96b2aec14331, with debug_info, not stripped
$ shasum -a 256 build/libtest.so
01c67c7a92037e27a63f37607aa3f8ad4fce71b64a6278c8a05dfa1d000305bd  build/libtest.so
```
vs
```sh
$ file build/libtest.so.bk
build/libtest.so.bk: data
$ shasum -a 256 build/libtest.so.bk
8f140af39a2b6330694b7b0c9530963ec59272e33c4b0c53c09bfaa0466f0ad3  build/libtest.so.bk
```
