# EasyCraft Launcher 0.4.13-beta.11.4

Beta 11.3의 GitHub Actions 빌드 차단 문제를 수정한 버전입니다.

계정 서버 주소는 런처에 기본 포함되어 있습니다:

```text
https://waffle-gangway-actress.ngrok-free.dev
```

GitHub Actions에서 별도 Secret을 추가하지 않아도 `npm run dist:win -- --publish never` 빌드가 진행됩니다.

Weird Host의 EasyCraft Account Server와 ngrok 터널은 계속 실행되어 있어야 합니다.
