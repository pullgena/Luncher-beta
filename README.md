# EasyCraft Launcher v0.4.13-beta.11.3 — ngrok Tunnel

Beta 11.3은 Weird Host의 raw IP/Port 대신 **ngrok HTTPS 터널 주소**로 EasyCraft Account Server에 연결합니다.

사용자 화면에서 서버 주소를 입력하지 않습니다. 개발자가 빌드 전에 딱 한 번 설정합니다.

## 빌드 전

1. Weird Host에서 beta.11.3 Account Server를 실행합니다.
2. 콘솔의 `PUBLIC HTTPS TUNNEL` 주소를 확인합니다.
3. `SET_NGROK_TUNNEL.bat` 실행
4. `my-easycraft.ngrok.app`처럼 도메인만 입력
5. `BUILD_EXE.bat` 실행

런처는 자동으로 `https://`를 붙이고, 원격 서버에 HTTP 주소를 넣은 빌드는 차단합니다.

학교/다른 PC 사용자는 EasyCraft ID/PW만 입력하면 됩니다. 단, 해당 네트워크가 ngrok 자체를 차단하면 연결할 수 없습니다.
