# GitHub Actions로 Beta 11 빌드하기

Weird Host 서버 주소는 사용자 설정 화면에 입력하는 값이 아니라 **빌드 시 Launcher 안에 넣는 값**입니다.

GitHub 저장소에서:

```text
Settings
→ Secrets and variables
→ Actions
→ New repository secret
```

이름:

```text
EASYCRAFT_ACCOUNT_SERVER_URL
```

값 예시:

```text
http://123.123.123.123:30123
```

을 저장합니다.

그 후 `Build Windows EXE` Action을 실행하면 됩니다.

Microsoft Application ID / Client Secret은 GitHub Secret으로 넣지 않습니다.
