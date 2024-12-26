# 프로젝트 이름
서비스 설명


## Tech Stack
FrontEnd: 
BackEnd: 

## Installation
### 다국어 설정
```dart
dart run arb_merger
flutter gen-l10n
```

### 프로젝트 설치
아래 명령어로 프로젝트를 설치합니다.

```dart
flutter pub get
```

### 코드 생성
해당 프로젝트는 다양한 코드 자동화 패키지를 사용하여 개발합니다.
따라서 실행을 위해 하단 명령어를 통해 코드를 생성해야 합니다.
자동 생성 익스텐션을 사용해도 무관합니다.

```dart
flutter packages pub run build_runner build
```

### APP 실행(로컬)
아직 flavor는 적용되지 않은 상태입니다.
추후 아래와 같은 명령어로 앱을 실행해야 합니다.
```dart
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
flutter run --flavor="development" --dart-define-from-file="env-dev.json"
```

## Build(배포)
마켓에 최종적으로 업로드할 결과물을 빌드할 때에는 다음 명령어를 사용합니다. 
안드로이드의 경우 플레이스토어 업로드 시 aab 포맷을 요구합니다. 따라서 프로덕션 버전은 aab로 빌드합니다.

### 1. 안드로이드
```dart
flutter build apk --release --flavor="development" --dart-define-from-file="env-dev.json"
flutter build aab --release --flavor="production" --dart-define-from-file="env-prod.json"
```

### 2. iOS
```dart
flutter build ipa --release --flavor="development" --dart-define-from-file="env-dev.json"
flutter build ipa --release --flavor="production" --dart-define-from-file="env-prod.json"
```