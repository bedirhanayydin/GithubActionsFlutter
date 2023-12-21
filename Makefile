test:
	@echo "╠ Running test..."
	flutter pub get
	flutter test

clean:
	flutter clean
	cd ios && rm -rf Podfile.lock
	cd ios && rm -rf Pods
	flutter pub get
	cd ios && pod install

deploy-android: 
	@echo "╠ Sending Android Build to Closed Testing..."
	flutter pub get
	flutter build apk --release
	cd android/fastlane && fastlane deploy

deploy-ios:
	@echo "╠ Sending iOS Build to TestFlight..."
	cd ios/fastlane && fastlane deploy