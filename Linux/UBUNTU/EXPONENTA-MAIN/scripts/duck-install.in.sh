cp @datadir@/@PACKAGE@/duck-repository.sources.list /etc/apt/sources.list.d/
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FE7097963FEFBE72
apt-get update
apt-get install -y duck
