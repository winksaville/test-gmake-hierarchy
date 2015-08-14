# Test hiearchy of apps and libraries
=====================================

Tests multiple applications dependent on one or more libraries
using gnu make as the build system

Run make from the root and an out file will be created
```
make
```

To run the application:
```
./out/apps/testaddsub/testaddsub
```

To clean:
```
make clean
```

or remove out/
```
rm -rf out
```

You may also run make from another directory and the out
directory will reside in there:
```
mkdir build
cd build
make -f ../Makefile
./out/apps/testaddsub/testaddsub
```
