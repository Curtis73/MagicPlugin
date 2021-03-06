#!/bin/bash
cd "$( dirname "$0" )"
rm -Rf target
mkdir target
cd target

# New resource packs

echo "** BUILDING DEFAULT **"

mkdir default
cd default
cp -R ../../default/* .
find . -name ".DS_Store" -type f -delete
zip -r -X ../Magic-RP-6-4.zip *
cd ..

echo "** BUILDING DEFAULT-Skulls **"

mkdir default-skulls
cd default-skulls
mkdir assets
cd assets
cp -R ../../../skulls/assets/* .
cd ..
cp -R ../../default/* .
find . -name ".DS_Store" -type f -delete
zip -r -X ../Magic-skulls-RP-6-4.zip *
cd ..

echo "** BUILDING SKULLS **"

mkdir skulls
cd skulls
mkdir assets
cp -R ../../skulls/* .
find . -name ".DS_Store" -type f -delete
zip -r -X ../flat-skulls.zip *
cd ..

echo "** BUILDING PAINTERLY **"

mkdir painterly
cd painterly
cp -R ../../default/* .
cp -R ../../painterly/* .
find . -name ".DS_Store" -type f -delete
zip -r -X ../Magic-painterly-RP-6-4.zip *
cd ..

echo "** BUILDING POTTER **"

mkdir potter 
cd potter
cp -R ../../default/* .
cp -R ../../potter/* .
find . -name ".DS_Store" -type f -delete
zip -r -X ../Magic-potter-RP-6-4.zip *
cd ..
