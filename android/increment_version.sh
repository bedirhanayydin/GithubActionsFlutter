#!/bin/bash

# Load version properties
versionPropsFile="android/version.properties"
flutterVersionCode=$(grep 'flutterVersionCode' $versionPropsFile | sed 's/[^0-9]//g')
flutterVersionName=$(grep 'flutterVersionName' $versionPropsFile | cut -d '=' -f2 | tr -d '[:space:]')

# Increment version code
flutterVersionCode=$((flutterVersionCode + 1))

# Update version name
flutterVersionName="1.0.$flutterVersionCode"

# Update version properties file
echo "flutterVersionCode=$flutterVersionCode" > $versionPropsFile
echo "flutterVersionName='$flutterVersionName'" >> $versionPropsFile

echo "Version incremented: flutterVersionCode=$flutterVersionCode, flutterVersionName=$flutterVersionName"
