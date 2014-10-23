#!/bin/bash
git clone git@github.com:Nimaear/O3UI.git TriOxygen
cd TriOxygen
git submodule init
git submodule update
find -iname '.git' | xargs rm -rf
rm .gitignore
rm .gitmodules
rm package.sh
zip -9 -m -r TriOxygen-$1.zip *
mv TriOxygen-$1.zip ../
cd ..
rm TriOxygen -rf