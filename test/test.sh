#!/usr/bash

echo "Installing rocksdb..."
sudo yum install rpms/aarch64/rocksdb-6.8.1-1.aarch64.rpm -y
sudo yum install rpms/aarch64/rocksdb-devel-6.8.1-1.aarch64.rpm  -y

echo -e "\nCompiling rocksdbtest.cc"  
g++ -std=c++11 -o test/rocksdbtest test/rocksdbtest.cc -lpthread -lrocksdb -lrt -ldl

echo -e "\nTesting..."
./test/rocksdbtest

echo -e "\nUninstalling rocksdb..."
sudo yum remove rocksdb -y

echo -e "\nTest again after uninstall rocksdb"
./test/rocksdbtest
