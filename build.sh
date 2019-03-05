#!/bin/bash
echo "Build Magento 1 stack"
rm .gitignore
cat GITIGNORE-CORE GITIGNORE-COREMODS GITIGNORE-CUSTOM > .gitignore
unzip localdb.zip
sed -i.bak -r 's/\w+\.$TARGETDOMAIN/$SRCDOMAIN/g' localdb.sql