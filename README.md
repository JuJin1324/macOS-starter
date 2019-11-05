# macOS-Tips

### zsh에서 ll 및 컬러 등을 바꿔보자
* Oh My Zsh : [github](https://github.com/robbyrussell/oh-my-zsh)
* macOs - OS 업데이트 후 git 등 오류 발생 시 솔루션 : [링크](http://redutan.github.io/2015/10/05/osx-after-update-git-error)

### Homebrew
* 공식페이지 : [링크](https://brew.sh/index_ko)
* 참조페이지 : [링크](https://m.blog.naver.com/PostView.nhn?blogId=sarang2594&logNo=221246170677&proxyReferer=https%3A%2F%2Fwww.google.com%2F)
* brew 패키지 관리하기 : [링크](https://rkjun.wordpress.com/2013/07/14/os-x-missing-package-manager-home-brew/)
* Homebrew를 이용한 OpenJDK 설치 : [링크](https://github.com/AdoptOpenJDK/homebrew-openjdk)
* Homebrew를 이용한 adb 설치 : [링크](https://stackoverflow.com/questions/31374085/installing-adb-on-macos)

### Cross Compiler
* 다운로드 : [링크](https://github.com/ARMmbed/homebrew-formulae)

### bash
* [Mac Terminal에서 ll 사용하기](https://blog.geun.kr/80)  
* [Homebrew](https://brew.sh/index_ko)  
* [Sierra IPTime PPTP VPN](https://geekcoders.tistory.com/entry/Mac-OS-X-Sierra-IPTime-PPTP-VPN)    

### eGPU
* 설명 : [링크](https://github.com/mayankk2308/purge-wrangler)

### mongoDB
* [Install MongoDB Community Edition on macOS](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/)  

### MySQL
* [macOS MySQL 설치 및 설정 사용법](https://whitepaek.tistory.com/16)
* [MySQL 설치 후 터미널에서 환경변수 설정하기](https://jason719.tistory.com/45)  
* [macOS 터미널에서 mysql 서버 켜기 / 끄기](https://macinjune.com/all-posts/web-developing/problem-solving/macos-%ED%84%B0%EB%AF%B8%EB%84%90-mysql-%EC%84%9C%EB%B2%84-%EC%BC%9C%EA%B8%B0-%EB%81%84%EA%B8%B0/)  
* [[MySQL] 사용자 관리(추가, 삭제, 권한 부여)](https://blog.opid.kr/237)
* [Mysql 사용자 추가, 제거 및 권한 부여](https://cjh5414.github.io/mysql-create-user/)  
* [mysql 적용 macOS에서 my.cnf 파일의 위치](https://code-examples.net/ko/q/a42431)  
* [OSX의 MySQL my.cnf 생성 및 UTF-8 기본값 설정](https://psage.tistory.com/entry/OSX%EC%9D%98-MySQL-mycnf-%EC%83%9D%EC%84%B1-%EB%B0%8F-UTF-8-%EA%B8%B0%EB%B3%B8%EA%B0%92-%EC%84%A4%EC%A0%95)  
* [[DB/MariaDB/Mysql] Mysql 언어설정으로 인한 문제, 그리고 해결](https://postitforhooney.tistory.com/entry/DBMariaDBMysql-Mysql-%EC%96%B8%EC%96%B4%EC%84%A4%EC%A0%95%EC%9C%BC%EB%A1%9C-%EC%9D%B8%ED%95%9C-%EB%AC%B8%EC%A0%9C-%EA%B7%B8%EB%A6%AC%EA%B3%A0-%ED%95%B4%EA%B2%B0)  

### Docker
* [Mac에서 Docker 환경구성 및 기본 사용 방법](https://bblog.tistory.com/297)

### tomcat
* [macOS Apache Tomcat 설치, 아파치 톰캣 실행 방법](https://whitepaek.tistory.com/12)

### 외부모니터 HiDPI(Retina) 설정
* [Wiki Page](https://github.com/JuJin1324/macOS-Tips/wiki/%EC%99%B8%EB%B6%80%EB%AA%A8%EB%8B%88%ED%84%B0-HiDPI(Retina)-%EC%84%A4%EC%A0%95)

### 해킨토시 만들기
* [Wiki 링크](https://github.com/JuJin1324/macOS-Tips/wiki/%ED%95%B4%ED%82%A8%ED%86%A0%EC%8B%9C-%EB%A7%8C%EB%93%A4%EA%B8%B0)

### Yosemite Optical disc 없이 Bootcamp 만들기
* 1. BootCamp Assistant 우클릭 -> 컨텐츠 보기 -> info.plist 에서 `PreUSBBootModels`를 `USBBootModels`로 변경  
-> 터미널에서 `$ sudo codesign -fs - /Applications/Utilities/Boot\ Camp\ Assistant.app` 후 BootCamp Assistant 실행 
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

## macOS 프로그램 목록
### Intel Power Gadget
* 설명 : Intel CPU 온도 및 주파수 조회
* 다운로드 : [링크](https://software.intel.com/en-us/articles/intel-power-gadget)

### logitech options
* 설명 : logitech 키보드 및 마우스 설정
* 다운로드 : [링크](https://www.logitech.com/ko-kr/product/options)

### LG 모니터 소프트웨어
* 다운로드 : [링크](https://www.lgservice.co.kr/search/driverSoftTotalSearchPage.do?type=3&searchKeyWord=34WK95U)

### Homebrew
* 설명 : macOS 용 패키지 관리자
* 다운로드 : [링크](https://brew.sh/index_ko)

### Team Viewer
* 다운로드 : [링크](https://www.teamviewer.com/ko/?pid=google.tv.brand_kr_sn_desk_brand_tvmisspeling_ex.s.kr&gclid=CjwKCAjwo9rtBRAdEiwA_WXcFg9kQijYi_D-jnZm7HycSunseac4sPvkmqs7g2RngzwQhjJvTWpqwRoCJ20QAvD_BwE)

### App Cleaner
* 다운로드 : [링크](https://freemacsoft.net/appcleaner/)

### Folx
* 다운로드 : [링크](https://mac.eltima.com/ko/download-manager.html)

### beats update
* 다운로드 : [링크](https://www.beatsbydre.com/kr/support/how-to/firmware-updates-beats-updater)

### Packet Sender
* 다운로드 : [링크](https://packetsender.com/download)

### Docker
* 다운로드 : [링크](https://hub.docker.com/?overlay=onboarding)
