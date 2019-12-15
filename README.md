# macOS tips

### 시스템 정보 확인
* Hyper-V 지원 확인 - $ `sysctl kern.hv_support`
* CPU 확인 - $ `sysctl -n machdep.cpu.brand_string`
* GPU 확인 - $ `system_profiler SPDisplaysDataType`

### Spotlight 키 변경
* 시스템 환경설정 -> 키보드 -> 단축키 -> Spotlight -> cmd + shift + space

## Catalina VMWare Fusion 10 Black Screen 해결
### SIP 해제
* 재부팅시 cmd + R로 Recovery 모드 진입
* 상단 유틸리티 -> 터미널
* `# csrutil disable` 후 재시작
* 재시작 후 터미널에서 `$ csrutil status`로 disable 됬는지 확인

### 명령어 실행
* 터미널에서 다음의 명령어들 모두 실행
* `tccutil reset All com.vmware.fusion`
* `sudo sqlite3 "/Library/Application Support/com.apple.TCC/TCC.db" 'insert into access values ("kTCCServiceScreenCapture", "com.vmware.fusion", 0, 1, 1, "", "", "", "UNUSED", "", 0,1565595574)'`
* `sudo sqlite3 "/Library/Application Support/com.apple.TCC/TCC.db" 'insert into access values ("kTCCServiceListenEvent", "com.vmware.fusion", 0, 1, 1, "", "", "", "UNUSED", "", 0,1565595574)'`
* `sudo sqlite3 "/Library/Application Support/com.apple.TCC/TCC.db" 'insert into access values ("kTCCServicePostEvent", "com.vmware.fusion", 0, 1, 1, "", "", "", "UNUSED", "", 0,1565595574)'`

### VMWare Fusion 재실행
* 끝
* 참고사이트 : [링크](https://communities.vmware.com/message/2879755#2879755)

##

### 키보드 지연시간 변경
* 시스템 환경설정 -> 키보드 -> 키 반복 빠르게(MAX) / 반복 지연시간 짧게 MAX에서 한칸 아래
* 좋은점 : 백스페이스 잘 들어서 빨리 지울 수 있음.

### Git
* macOS - OS 업데이트 후 git 등 오류 발생 시 솔루션 - `$ xcode-select --install`
* 참고자료 : [링크](http://redutan.github.io/2015/10/05/osx-after-update-git-error)

### VPN 사용 
* [Sierra IPTime PPTP VPN](https://geekcoders.tistory.com/entry/Mac-OS-X-Sierra-IPTime-PPTP-VPN)    

### Yosemite Optical disc 없이 Bootcamp 만들기
* 1. BootCamp Assistant 우클릭 -> 컨텐츠 보기 -> info.plist 에서 `PreUSBBootModels`를 `USBBootModels`로 변경  
-> 터미널에서 $ `sudo codesign -fs - /Applications/Utilities/Boot\ Camp\ Assistant.app` 후 BootCamp Assistant 실행 
* 참조 : [링크](https://www.hongkiat.com/blog/install-bootcamp-without-optical-drive/)

## macOS에서 유용한 단축키 정리
### Finder
설명       | 단축키
--------- | ---------
command + shift + A | 응용프로그램 폴더 열기
￼command + shift + D | 데스크탑 폴더 열기
command + shift + O | 도큐먼트 폴더 열기
command + option + 전원 버튼 | Mac을 잠자기 상태로 전환 
shift + control + 전원 버튼 | 디스플레이를 잠자기 상태로 전환
(터미널에서) command + shift + K | 원격연결 저장 및 연결
command + \ | 1password 찾기 

### eGPU
* 설명 : [링크](https://github.com/mayankk2308/purge-wrangler)

## macOS 사용 프로그램 정리
### Homebrew
* 설명 : macOS 용 패키지 관리자
* 다운로드 : [링크](https://brew.sh/index_ko)
* 자주 쓰는 옵션
```bash
### 설치된 패키지 리스트 확인
$ brew list

### brew에서 설치할 수 있는 패키지 검색
$ brew search 찾고싶은패키지명

### 패키지 삭제
$ brew remove 패키지명 OR brew uninstall 패키지명

### brew cask : GUI 애플리케이션 설치
$ brew cask install 애플리케이션명

### 애플리케이션이 cask 저장소에 있는지 확인
$ brew cask audit 애플리케이션명

### 애플리케이션 전체 최신버전으로 업데이트
$ brew cask upgrade
```
* 참조페이지 : [링크](https://m.blog.naver.com/PostView.nhn?blogId=sarang2594&logNo=221246170677&proxyReferer=https%3A%2F%2Fwww.google.com%2F)
* brew 패키지 관리하기 : [링크](https://rkjun.wordpress.com/2013/07/14/os-x-missing-package-manager-home-brew/)

### Oh My Zsh
* 설치 - `$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
* Oh My Zsh : [github](https://github.com/robbyrussell/oh-my-zsh)

### mongoDB
* mongoDB 설치 
```bash
$ brew tap mongodb/brew
$ brew install mongodb-community@4.2
```
* mongoDB 실행 - $ `brew services start mongodb-community@4.2`
* nosql booster for MongoDB 설치 - $ `brew cask install nosqlbooster-for-mongodb`

* 참고 사이트
 - [Install MongoDB Community Edition on macOS](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/)  

### MySQL
* $ `brew cask install mysql`
* [macOS MySQL 설치 및 설정 사용법](https://whitepaek.tistory.com/16)
* [MySQL 설치 후 터미널에서 환경변수 설정하기](https://jason719.tistory.com/45)  
* [macOS 터미널에서 mysql 서버 켜기 / 끄기](https://macinjune.com/all-posts/web-developing/problem-solving/macos-%ED%84%B0%EB%AF%B8%EB%84%90-mysql-%EC%84%9C%EB%B2%84-%EC%BC%9C%EA%B8%B0-%EB%81%84%EA%B8%B0/)  
* [[MySQL] 사용자 관리(추가, 삭제, 권한 부여)](https://blog.opid.kr/237)
* [Mysql 사용자 추가, 제거 및 권한 부여](https://cjh5414.github.io/mysql-create-user/)  
* [mysql 적용 macOS에서 my.cnf 파일의 위치](https://code-examples.net/ko/q/a42431)  
* [OSX의 MySQL my.cnf 생성 및 UTF-8 기본값 설정](https://psage.tistory.com/entry/OSX%EC%9D%98-MySQL-mycnf-%EC%83%9D%EC%84%B1-%EB%B0%8F-UTF-8-%EA%B8%B0%EB%B3%B8%EA%B0%92-%EC%84%A4%EC%A0%95)  
* [[DB/MariaDB/Mysql] Mysql 언어설정으로 인한 문제, 그리고 해결](https://postitforhooney.tistory.com/entry/DBMariaDBMysql-Mysql-%EC%96%B8%EC%96%B4%EC%84%A4%EC%A0%95%EC%9C%BC%EB%A1%9C-%EC%9D%B8%ED%95%9C-%EB%AC%B8%EC%A0%9C-%EA%B7%B8%EB%A6%AC%EA%B3%A0-%ED%95%B4%EA%B2%B0)  
* mysql mysql.sock 오류시 해결방법 : [macOS에서 homebrew로 mysql 을 깨끗하게 재설치](https://walkingfox.tistory.com/89)

### Docker
* 설치 - $ `brew cask install docker`
* [Mac에서 Docker 환경구성 및 기본 사용 방법](https://bblog.tistory.com/297)
* Docker에서 지원하지 않는 CPU의 경우 - $ `brew cask install docker-toolbox` 설치해보는건 어떨까..(아직 확인 못함)

### tomcat
* 설치 - $ `brew install tomcat`
* [macOS Apache Tomcat 설치, 아파치 톰캣 실행 방법](https://whitepaek.tistory.com/12)

### Open JDK 8
```bash
$ brew tap AdoptOpenJDK/openjdk
$ brew cask install adoptopenjdk8
```
* 참조 : [링크](https://github.com/AdoptOpenJDK/homebrew-openjdk)

### ADB
* android platform tools
* $ `brew cask install android-platform-tools`
* 참조 : [링크](https://stackoverflow.com/questions/31374085/installing-adb-on-macos)

### JetBrain Toolbox
* $ `brew cask install jetbrains-toolbox`

### Packet Sender
* $ `brew cask install packetsender`

### Intel Power Gadget
* 설명 : Intel CPU 온도 및 주파수 조회
* $ `brew cask install intel-power-gadget`

### Macs Fan Control
* 맥에서 도는 팬의 회전수 / 온도 체크
* $ `brew cask install macs-fan-control`

### App Cleaner
* 프로그램 삭제툴
* $ `brew cask install appcleaner`

### Wireshark
* 패킷 검사 툴
* $ `brew cask install wireshark`

### 1password
* $ `brew cask install 1password`

### Team Viewer
* $ `brew cask install teamviewer`

### Github Desktop
* $ `brew cask install github`

### Slack
* 사내 메신져
* $ `brew cask install slack`

### Visual Studio Code
* $ `brew cask install visual-studio-code`

### Mounty
* NTFS 쓰기 for macOS
* $ `brew cask install mounty`

### logitech options
* 설명 : logitech 키보드 및 마우스 설정
* 다운로드 : [링크](https://www.logitech.com/ko-kr/product/options)

### LG 모니터 소프트웨어
* 다운로드 : [링크](https://www.lgservice.co.kr/search/driverSoftTotalSearchPage.do?type=3&searchKeyWord=34WK95U)

### Folx
* 다운로드 : [링크](https://mac.eltima.com/ko/download-manager.html)

### beats update
* 다운로드 : [링크](https://www.beatsbydre.com/kr/support/how-to/firmware-updates-beats-updater)

### VMWare Fusion
* 다운로드 : [링크](https://www.vmware.com/kr/products/fusion/fusion-evaluation.html)






