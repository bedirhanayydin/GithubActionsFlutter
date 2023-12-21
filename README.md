# [TR]
# 🚀 Flutter GitHub Actions CI/CD ve Firebase Deployment Örneği

Bu depo, Flutter projeleri için GitHub Actions ile sürekli entegrasyon ve sürekli dağıtım (CI/CD) örnek bir yapı içermektedir.

## 🛠️ Gereksinimler

- Flutter SDK
- GitHub Actions
- Firebase CLI
- Fastlane (Opsiyonel)

## 🚀 CI/CD Aşamaları

1. **Test Etme:** Projede bulunan testleri çalıştırır.

2. **Kod Analizi:** Dart kodunu analiz eder.

3. **Build:** Uygulamayı derler ve bir APK dosyası oluşturur.

4. **Firebase App Distribution:** Firebase App Distribution aracılığıyla APK veya App Bundle'ı dağıtır.

5. **Teams Bildirim:** Microsoft Teams üzerinden testerlara yeni sürüm hakkında bildirim gönderir.

## 🌐 Firebase App Distribution ve Teams Bildirimleri (Opsiyonel)

Firebase App Distribution ve Teams bildirimlerini kullanmak için aşağıdaki adımları takip edin:

1. `android/json-secret.json` adında bir dosya oluşturun ve Firebase CLI token, app ID, Teams URL gibi gizli bilgileri içerdiğinden emin olun.

2. GitHub deposu ayarlarından "Secrets" (Gizli Değerler) sekmesine gidin ve bu dosyanın içeriğini bu sekmede tanımlayın:

    - `FIREBASE_SECRET`: Firebase CLI token
    - `APP_ID`: Firebase proje ID'si
    - `TEAMS_URL`: Microsoft Teams Webhook URL'si

## 🚢 Manuel Dağıtım

Eğer manuel olarak sürümü dağıtmak istiyorsanız, aşağıdaki komutları kullanabilirsiniz:

- Fastlane kullanarak Firebase dağıtımı:
  ```bash
  cd android/fastlane deploy
- Makefile kullanarak Firebase dağıtımı:
  ```bash
  make deploy-android
  
Umarım bu örnek, Flutter projelerinizde CI/CD sürecini geliştirmenize yardımcı olur! 🚀

## [EN]
# 🚀 Flutter GitHub Actions CI/CD and Firebase Deployment Example

This repository contains an example structure for continuous integration and continuous deployment (CI/CD) for Flutter projects using GitHub Actions.

## 🛠️ Requirements

- Flutter SDK
- GitHub Actions
- Firebase CLI
- Fastlane (Optional)

## 🚀 CI/CD Stages

1. **Testing:** Runs tests present in the project.

2. **Code Analysis:** Analyzes Dart code.

3. **Build:** Compiles the application and generates an APK file.

4. **Firebase App Distribution:** Distributes the APK or App Bundle via Firebase App Distribution.

5. **Teams Notification:** Sends a notification about the new version to testers via Microsoft Teams.

## 🌐 Firebase App Distribution and Teams Notifications (Optional)

To use Firebase App Distribution and Teams notifications, follow these steps:

1. Create a file named `android/json-secret.json` containing sensitive information such as Firebase CLI token, app ID, Teams URL.

2. Go to the repository settings on GitHub, navigate to the "Secrets" tab, and define the content of this file in the secrets:

    - `FIREBASE_SECRET`: Firebase CLI token
    - `APP_ID`: Firebase project ID
    - `TEAMS_URL`: Microsoft Teams webhook URL

## 🚢 Manual Deployment

If you want to distribute the version manually, you can use the following commands:

- Firebase deployment using Fastlane:
  ```bash
  fastlane deploy
- Firebase deployment using Makefile:
  ```bash
  make deploy-android

Hope this example helps you improve the CI/CD process for your Flutter projects! 🚀

## 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥

<img width=70% height=70% alt="Screenshot 2023-12-21 at 14 00 04" src="https://github.com/bedirhanayydin/GithubActionsFlutter/assets/58737803/272e8a3a-c81d-477c-bc15-9e7482a4b349">

<img width=70% height=70% alt="Screenshot 2023-12-21 at 14 00 31" src="https://github.com/bedirhanayydin/GithubActionsFlutter/assets/58737803/203bc678-ac5e-4848-a419-d726be95021d">

<img width=70% height=70% alt="Screenshot 2023-12-21 at 14 00 25" src="https://github.com/bedirhanayydin/GithubActionsFlutter/assets/58737803/c28f7abd-ed63-437e-950e-cd41c0ce9e8d">

<img width=70% height=70% alt="Screenshot 2023-12-21 at 13 58 18" src="https://github.com/bedirhanayydin/GithubActionsFlutter/assets/58737803/2b752811-c13a-406e-9459-7dbaf6ea5c3d">

Bu görseller, CI/CD sürecinin adımlarını göstermektedir. Umarım bu düzenleme README dosyanızın daha şık ve düzenli görünmesine yardımcı olur! 🚀
