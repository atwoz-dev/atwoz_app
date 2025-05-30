# Flutter 관련 기본 설정
FLUTTER ?= flutter
DART ?= dart
ENV_FILE ?= dev.env

# 기본 타겟
all: help

# 헬프 메시지
help:
	@echo "사용 가능한 명령:";
	@echo "";
	@echo "=== 프로젝트 관리 ===";
	@echo "  make init                 - 프로젝트 초기화 (처음 클론 후 실행 필수)";
	@echo "  make generate             - 코드 생성 (build_runner 사용)";
	@echo "";
	@echo "=== 빌드 ===";
	@echo "  make build                - 기본 APK 빌드";
	@echo "  make android-build        - APK 빌드";
	@echo "  make ios-build            - IPA 빌드 (macOS 환경에서 실행 가능)";
	@echo "";
	@echo "=== 실행 ===";
	@echo "  make run ENV_FILE=<env_file>";
	@echo "                           - 지정된 환경으로 앱 실행";
	@echo "                           - 예: make run ENV_FILE=dev.env";
	@echo "";
	@echo "=== 테스트 및 품질 관리 ===";
	@echo "  make test                 - 테스트 실행";
	@echo "  make analyze              - 코드 분석";
	@echo "";
	@echo "=== Firebase 설정 ===";
	@echo "  make download-firebase    - Firebase 설정 파일 다운로드 (URL 수정 필요)";
	@echo "";
	@echo "=== 도움말 ===";
	@echo "  make help                 - 사용 가능한 명령어 목록 표시";
	@echo "";
	@echo "명령어 뒤에 추가적인 변수 설정으로 빌드와 실행을 세분화할 수 있습니다.";
	@echo "예시:";
	@echo "  make run ENV_FILE=dev.env  # 환경 파일 지정 필요";
	@echo "  make android-dev-build";
	@echo "  make ios-prod-build";
		@echo "  make clean-all            - 캐시 및 의존성 완전 삭제 후 재설정";
	@echo "  make android-dev-build    - dev 환경으로 Android 빌드";
	@echo "  make android-prod-build   - prod 환경으로 Android 빌드";
	@echo "  make ios-dev-build        - dev 환경으로 iOS 빌드";
	@echo "  make ios-prod-build       - prod 환경으로 iOS 빌드";
	@echo "  make run-release          - 릴리즈 모드 실행 (디바이스용)";
	@echo "  make outdated             - 의존성 버전 확인";




# Flutter 명령어
build:
	$(FLUTTER) build apk --release

test:
	$(FLUTTER) test

analyze:
	$(FLUTTER) analyze

# init 명령: 처음 프로젝트를 클론받았을 때 실행
init:
	$(FLUTTER) pub get
	$(DART) run flutter_native_splash:create
	$(FLUTTER) pub run flutter_launcher_icons:main
	$(DART) run build_runner build --delete-conflicting-outputs

generate:
	$(DART) run build_runner build --delete-conflicting-outputs

# --dart-define-from-file: 플러터 버전에 따라 사용이 불가할 수 있음
# 명령어 예시: make run ENV_FILE=dev.env
# 명령어 예시: make run ENV_FILE=prod.env
run:
	$(FLUTTER) pub get
	$(DART) run build_runner build --delete-conflicting-outputs
	$(FLUTTER) run --dart-define-from-file=$(ENV_FILE)

android-build:
	$(FLUTTER) build apk --release --dart-define-from-file=$(ENV_FILE)

ios-build:
	@if [[ "$$OSTYPE" == "darwin"* ]]; then \
		$(FLUTTER) build ipa --release --dart-define-from-file=$(ENV_FILE); \
	else \
		echo "iOS 빌드는 macOS 환경에서만 실행 가능합니다."; \
	fi

# 실제 Firebase 파일 경로로 교체 필요
download-firebase:
	curl -o android/app/google-services.json https://example.com/firebase-dev.json
	curl -o ios/Runner/GoogleService-Info.plist https://example.com/firebase-dev.plist

clean-all:
	@echo "🔄 전체 캐시 및 빌드 파일 삭제 중..."
	rm -rf build
	rm -rf .dart_tool
	rm -rf .packages
	rm -rf pubspec.lock
	rm -rf ios/Pods
	rm -rf ios/Runner.xcworkspace
	rm -rf android/.gradle
	rm -rf android/build
	rm -rf ios/build
	rm -rf macos/Pods
	rm -rf macos/Runner.xcworkspace
	$(FLUTTER) clean
	@echo "클린 완료! pub get 진행 중..."
	$(FLUTTER) pub get

android-dev-build:
	$(FLUTTER) build apk --release --dart-define-from-file=dev.env

android-prod-build:
	$(FLUTTER) build apk --release --dart-define-from-file=prod.env

ios-dev-build:
	@if [[ "$$OSTYPE" == "darwin"* ]]; then \
		$(FLUTTER) build ipa --release --dart-define-from-file=dev.env; \
	else \
		echo "iOS 빌드는 macOS 환경에서만 실행 가능합니다."; \
	fi

ios-prod-build:
	@if [[ "$$OSTYPE" == "darwin"* ]]; then \
		$(FLUTTER) build ipa --release --dart-define-from-file=prod.env; \
	else \
		echo "iOS 빌드는 macOS 환경에서만 실행 가능합니다."; \
	fi

run-release:
	$(FLUTTER) run --release --dart-define-from-file=$(ENV_FILE)

outdated:
	$(FLUTTER) pub outdated
