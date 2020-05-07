#!/usr/bash

sudo sh add_repo.sh
sudo yum install gcc gcc-c++ make wget git rpm-build rpmdevtools gdb gtest-devel -y
rpmdev-setuptree
cp specs/rocksdb.spec ~/rpmbuild/SPECS/
wget https://codeload.github.com/facebook/rocksdb/tar.gz/v6.8.1 -P ~/rpmbuild/SOURCES/
cp sources/rocksdb-6.8.1-install_path.patch ~/rpmbuild/SOURCES/
cd ~/rpmbuild 
rpmbuild -ba SPECS/rocksdb.spec


