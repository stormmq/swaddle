#!/usr/bin/env sh
set -e
set -u

repoFilePath='/etc/yum.repos.d/example-swaddling.repo'
sudo -p "Password to allow root to remove '$repoFilePath' and perform install: " rm -rf "$repoFilePath"
curl --fail --location --silent --show-error 'https://raphaelcohn.github.io/swaddle/download//yum/example-swaddling/example-swaddling.repo' | sudo -p "Password to allow root to install '$repoFilePath': " tee "$repoFilePath" >/dev/null
echo "Now run 'sudo yum update' and 'sudo yum group info example-swaddling' to see all packages available."
