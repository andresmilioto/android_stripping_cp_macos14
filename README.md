```sh
./build.sh
for (( i=1; i<=300; i++ )); do cp build/libtest.so /tmp/libtest.so.$i; done
find /tmp/ -name "libtest.so*" | xargs -I{} file {}
```
