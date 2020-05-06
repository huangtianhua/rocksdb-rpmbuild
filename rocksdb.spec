Name: rocksdb
Version: 6.8.1        
Release: 1%{?dist}
Summary: A library that provides an embeddable, persistent key-value store for fast storage      

License: GPLv2 and Apache 2.0 License
URL: http://rocksdb.org/
Source0: https://codeload.github.com/facebook/%{name}/tar.gz/v%{version}

BuildRequires: gcc make rpm-build
#Requires: 

%define install_path /usr
%description
The rpm pacakage of %{name} %{version} for aarch64 platform

%prep
%autosetup


%build
#%%configure
#%%make_build
make static_lib %{?_smp_mflags}


%install
rm -rf $RPM_BUILD_ROOT
#%%make_install
make install INSTALL_PATH=%{buildroot}%{install_path}

%files
%license COPYING LICENSE.Apache LICENSE.leveldb
%doc README.md
%{install_path}/lib
%{install_path}/include


%changelog
* Thu Apr 30 2020 rocksdb
- RPM package for rocksdb