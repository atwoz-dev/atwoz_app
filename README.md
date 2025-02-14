# 에이투지 A to Z
이상형 매칭붙터 데이트 코칭까지<br>
연애의 모든 것, 에이투지


## Tech Stack
FrontEnd: Dart Flutter
<br>
BackEnd: Java Spring Boot

## 주의할 점
아직 flavor는 적용되지 않은 상태입니다.
따라서 flavor가 쓰인 부분은 문서화는 되어 있지만, 추후 사용 가능합니다.


## Installation

### 프로젝트 세팅
해당 프로젝트는 프로젝트의 효율적인 관리를 위해 Makefile을 사용합니다.
예를 들어 프로젝트를 클론받아 최초 실행 시 다음 명령어를 통해 프로젝트를 세팅할 수 있습니다.
윈도우 사용자의 경우 Makefile을 사용하기 위해 별도의 도구 설치 및 환경변수 설정이 필요할 수 있습니다.

```bash
make init
```


### 코드 생성
해당 프로젝트는 다양한 코드 자동화 패키지를 사용하여 개발합니다.
따라서 실행을 위해 하단 명령어를 통해 코드를 생성해야 합니다.
자동 생성 익스텐션을 사용해도 무관합니다.
이는 `make init` 명령어에 포함되어 있습니다.
단독실행 시 `make generate`로 대체 가능합니다.

```dart
dart run build_runner build
```

### APP 실행(로컬)
추후 아래와 같은 명령어로 앱을 실행해야 합니다.
`make run FLAVOR=dev ENV_FILE=dev.env`로 대체 가능합니다.
```dart
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run --flavor=dev --dart-define-from-file="dev.env"
```

## Build(배포)
마켓에 최종적으로 업로드할 결과물을 빌드할 때에는 다음 명령어를 사용합니다. 
안드로이드의 경우 플레이스토어 업로드 시 aab 포맷을 요구합니다. 따라서 프로덕션 버전은 aab로 빌드합니다.

### 1. 안드로이드
`make build FLAVOR=dev ENV_FILE=dev.env`로 대체 가능합니다.
FLAVOR와 ENV_FILE은 환경에 따라 변경해야 합니다.
```dart
flutter build apk --release --flavor=dev --dart-define-from-file="dev.env"
flutter build aab --release --flavor=prod --dart-define-from-file="prod.env"
```

### 2. iOS
iOS 빌드는 macOS 환경에서만 가능합니다.
`make build FLAVOR=dev ENV_FILE=dev.env`로 대체 가능합니다.
FLAVOR와 ENV_FILE은 환경에 따라 변경해야 합니다.
```dart
flutter build ipa --release --flavor=dev --dart-define-from-file="dev.env"
flutter build ipa --release --flavor=prod --dart-define-from-file="prod.env"
```