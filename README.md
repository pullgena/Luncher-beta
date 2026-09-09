# EasyCraft Launcher v0.4.13-beta.11 — Account Vault

학교 PC에서 Microsoft 로그인 화면을 띄우지 않고 **EasyCraft 계정으로 집에서 연결한 Minecraft 계정을 불러오는 구조**입니다.

## 핵심 흐름

### 집/로그인이 허용된 PC — 최초 1회

```text
EasyCraft ID/PW 로그인
→ Microsoft Minecraft 계정 연결
→ v0.4.12와 같은 minecraft-java-core 내장 Microsoft 로그인
→ 계정 JSON을 Launcher에서 AES-256-GCM 암호화
→ Weird Host Python 서버에는 암호문만 업로드
```

### 학교 PC

```text
EasyCraft ID/PW 로그인
→ 암호화된 Minecraft 보관함 다운로드
→ PC에서 복호화
→ Microsoft().refresh()로 백그라운드 갱신
→ 로그인 화면 없이 Minecraft 실행
```

## 없는 것

- 사용자 Microsoft Application ID 입력
- Client Secret
- OAuth Redirect URI
- EasyCraft 인증 사이트
- Python 서버에서 Microsoft OAuth 처리

## Weird Host 연결

1. `EasyCraft-Account-Server-beta.11-WeirdHost.zip` 서버 파일을 Weird Host Python 서버에 올립니다.
2. 서버의 IP:PORT를 확인합니다.
3. 이 Launcher 소스에서 `SET_WEIRD_HOST_SERVER.bat`을 실행하고 주소를 한 번 입력합니다.
4. `BUILD_EXE.bat` 또는 GitHub Actions로 빌드합니다.

서버 주소는 Launcher 설정 화면에 노출되지 않습니다.

## 보안

EasyCraft 비밀번호는 네트워크로 전송하지 않습니다. SRP-6a 방식으로 로그인하며, Microsoft/Minecraft 계정 보관함은 EasyCraft 비밀번호에서 별도로 파생된 키로 Launcher에서 AES-256-GCM 암호화한 후 업로드합니다. 서버는 보관함을 복호화할 수 없습니다.

학교 네트워크가 Microsoft 로그인 **웹페이지뿐 아니라 백그라운드 token refresh 요청까지** 차단하면 자동 갱신도 실패할 수 있습니다. 이 버전은 학교의 인증/네트워크 정책을 우회하지 않습니다.
