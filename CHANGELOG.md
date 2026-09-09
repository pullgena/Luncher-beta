# v0.4.13-beta.11.1

- Microsoft 갱신 네트워크 오류가 무조건 “학교 네트워크”로 표시되던 잘못된 안내 문구 수정
- EasyCraft 계정 로그인은 성공했지만 저장된 Microsoft refresh token 갱신에 실패하면 세션을 유지하고 “Minecraft 계정 다시 연결” 경로 제공
- 갱신 실패 원인과 EasyCraft 계정 서버 로그인 실패를 구분
- Beta 11 Account Vault 구조 유지

# Changelog

## 0.4.13-beta.11

- EasyCraft 계정 기반 Minecraft 로그인 동기화 재구성
- 집/허용된 PC에서 `minecraft-java-core` 내장 Microsoft 로그인으로 최초 연결
- 학교 PC에서는 EasyCraft ID/PW만 입력하고 저장된 Microsoft/Minecraft 계정을 자동 갱신
- Microsoft Application ID / Client Secret / Redirect URI 설정 제거
- Python 계정 서버는 Microsoft OAuth를 처리하지 않음
- Microsoft/Minecraft 계정 JSON을 Launcher에서 AES-256-GCM으로 암호화 후 업로드
- EasyCraft 비밀번호를 서버로 보내지 않는 SRP-6a 로그인 프로토콜 적용
- 세션 요청에 timestamp + nonce + HMAC 서명 적용
- Weird Host의 HTTP IP:PORT 서버 주소도 빌드에 설정 가능
- 기존 업데이트 시작 화면 timeout, Modrinth, 인스턴스, 로그, 오프라인 fallback 유지
