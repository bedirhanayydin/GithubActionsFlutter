#!/bin/bash

# Sürüm numarasını al
version_code=$(grep 'versionCode' ./android/app/build.gradle | sed 's/[^0-9]//g')
version_name=$(grep 'versionName' ./android/app/build.gradle | sed 's/[^0-9.]//g')

# Sürüm numarasını artır
version_code=$((version_code + 1))
version_name=$(echo "$version_name" | awk -F. '{$NF+=1; OFS="."; print $0}')

# Artırılmış sürüm numarasını Gradle dosyasına yaz
sed -i "s/versionCode $version_code/versionCode $((version_code))/g" ./android/app/build.gradle
sed -i "s/versionName \"$version_name\"/versionName \"$version_name\"/g" ./android/app/build.gradle

echo "Sürüm numarası artırıldı: versionCode $version_code, versionName $version_name"
