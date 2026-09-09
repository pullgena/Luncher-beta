# Launcher에서 Weird Host 서버 연결

Weird Host Python 서버의 콘솔에서 서버가 실행된 뒤, 패널에서 **할당 IP와 포트**를 확인합니다.

예:

```text
123.123.123.123:30123
```

브라우저에서:

```text
http://123.123.123.123:30123/health
```

가 열리면 Launcher 폴더의:

```text
SET_WEIRD_HOST_SERVER.bat
```

을 실행하여:

```text
http://123.123.123.123:30123
```

을 한 번 입력합니다.

그 후 빌드하면 서버 주소는 Launcher 내부 설정 파일에 포함되며 일반 사용자 UI에는 표시되지 않습니다.
