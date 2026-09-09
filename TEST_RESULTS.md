# Beta 11 검사 결과

통과한 검사:

- `main.js`, `renderer.js`, `preload.js`, `minecraft-worker.js` JavaScript 문법 검사
- Renderer HTML ID 132개 연결 검사
- 직접 이벤트 핸들러 13개 연결 검사
- IPC invoke/handle 43개 연결 검사
- Python `app.py` 문법/컴파일 검사
- JSON 파일 파싱 검사
- Git conflict marker 검사
- 요청된 EasyCraft 비밀번호 원문이 Launcher/Server 소스에 포함되지 않았는지 검사
- 로컬 Python 서버 + Node 테스트 클라이언트로 SRP-6a 로그인 성공
- SRP 서버 증명(M2) 검증 성공
- 세션 HMAC 요청/응답 서명 검증 성공
- AES-256-GCM Minecraft vault 업로드/다운로드/복호화 성공
- 로그아웃 성공
- `npm pack --dry-run` 통과

이 환경에서 수행하지 못한 것:

- 실제 사용자 Microsoft 계정으로 `minecraft-java-core` Device Code 로그인
- 실제 Minecraft Java 소유권 인증
- Weird Host 실제 배포 서버에서의 외부 연결
- 학교 네트워크에서 `Microsoft().refresh()`가 허용되는지 여부

따라서 Beta 11의 EasyCraft 계정/서버 동기화 프로토콜은 로컬 통합 테스트까지 완료했지만, 실제 Microsoft 및 학교 환경 테스트는 사용자 환경에서 한 번 필요합니다.
