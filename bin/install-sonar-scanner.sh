#!/bin/sh

set -ex

cd tmp
OS="linux"
VERSION=4.1.0.1829

SCANNER_LIB=sonar-scanner-$VERSION-$OS
SCANNER_CLI=sonar-scanner-cli-$VERSION-$OS
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/$SCANNER_CLI.zip
unzip -qq -o $SCANNER_CLI.zip

chmod +x $SCANNER_LIB/bin/sonar-scanner
chmod +x $SCANNER_LIB/jre/bin/java
cp -r $SCANNER_LIB /opt/sonar-scanner