sudo cat >  /etc/yum.repos.d/local.repo << EOF
[basiclocal]

name=basiclocal

baseurl=http://repo.openeuler.org/openEuler-20.03-LTS/OS/aarch64/

enabled=1

gpgcheck=0

[srclocal]

name=srclocal

baseurl=http://repo.openeuler.org/openEuler-20.03-LTS/source/

enabled=1

gpgcheck=0

[everythinglocal]

name=everythinglocal

baseurl=http://repo.openeuler.org/openEuler-20.03-LTS/everything/aarch64/

enabled=1

gpgcheck=0
EOF
