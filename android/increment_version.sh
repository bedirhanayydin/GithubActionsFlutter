#!/bin/bash

set -x

# Sürüm numarasını al
version_code=$(grep 'versionCode' ./android/app/build.gradle | sed 's/[^0-9]//g')
version_name=$(grep 'versionName' ./android/app/build.gradle | sed 's/[^0-9.]//g')

# Sürüm numarasını artır
version_code=$((version_code + 1))
version_name=$(echo "$version_name" | awk -F. '{$NF+=1; OFS="."; print $0}')

# Artırılmış sürüm numarasını Gradle dosyasına yaz
sed -i 's/versionCode [0-9]*/versionCode '$version_code'/' ./android/app/build.gradle
sed -i 's/versionName "[0-9.]*/versionName "'$version_name'"/' ./android/app/build.gradle


echo "Sürüm numarası artırıldı: versionCode $version_code, versionName $version_name"
