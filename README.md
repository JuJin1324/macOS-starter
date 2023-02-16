# macOS-Starter
> macOS에서 웹 개발에 필요한 환경 잡기 및 지식 정리

## iTerm
### Finder 에 열린 디렉터리를 iterm 으로 열기 단축키 설정
> 시스템 설정 -> 키보드 -> 키보드 단축키... 버튼 클릭 -> 서비스 탭 -> 파일 및 폴더 -> 
> New iTerm2 Tab Here 에 F5 설정  
> New iTerm2 Window Here 에 F6 설정
>
> 사용법: Finder 에서 디렉터리를 먼저 클릭한 후에 F5 키를 누르면 iTerm2 에 현재 디렉터리가 클릭한 디렉터리 경로로 설정된 터미널이 켜진다.  

### Color scheme 적용
> [iterm color scheme 사이트](https://iterm2colorschemes.com/)에 접속하여 원하는 color scheme 을 다운로드 받을 수 있다.  
> 예시로 iterm color scheme 중 Adventure 를 다운로드 받아서 적용한다.  
> `cd ~/Desktop; wget https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Adventure.itermcolors`  
> iTerm2 앱을 켜서 Command + i -> Colors 탭 -> Color Presets... -> 목록의 맨 아래 import... 항목 클릭 
> -> Desktop 에서 Adventure.itermcolors 파일 선택 -> 다시 Color Presets... -> 목록에서 Adventure 선택   

---

## magnet
> macOS 에서 앱 단축키로 앱의 윈도우 크기 및 위치 조정 앱

### 설치
> `mas install 441258766`

### 1/2 분할 단축어
> 왼쪽: Ctrl + Shift + ←  
> 오른쪽: Ctrl + Shift + →  

### 1/3 분할 단축어
> 좌측 1번째: Ctrl + Shift + 1  
> 좌측 2번째: Ctrl + Shift + 2  
> 좌측 3번째: Ctrl + Shift + 3  

---

## VPN
### macOS Ventura VPN 접속 프로파일 생성
> 1.Mac App Store 에서 `Apple Configurator` 설치  
> 터미널에 mas(Mac App Store) 가 설치 안된 경우 먼저 설치: `brew install mas`  
> Apple Configurator 설치: `mas install 1037126344`  
> 
> 2.프로파일 생성
> Apple Configurator 오픈 -> 새로운 프로파일(Cmd + N) -> 일반 탭에서 이름만 설정 
> -> VPN 탭으로 이동 -> 구성 버튼 클릭 -> 필수 정보 입력 -> 저장(Cmd + S) 
> -> 만들어진 프로파일 더블 클릭 -> 시스템 설정 앱 열기 -> 개인정보 보호 및 보안 -> 맨 아래 기타 섹션에서 프로파일 
> -> 만들었던 프로파일 더블클릭 -> 설치... 버튼 클릭 
>
> 3.VPN 연결
> 시스템 설정 앱의 VPN 탭으로 이동 -> 신규 생성된 VPN 의 토글 클릭해서 연결 시도 -> 연결 완료  
>
> 참조사이트
> [L2TP VPN broken on MacOS 13/Ventura](https://developer.apple.com/forums/thread/707996)

---

## Hardware
### LG 모니터 4K 연결
> LG 모니터에 썬더볼트 연결 시 4K 해상도가 안나오는 경우 해결 방법  
> 1.모니터 전원 버튼 혹은 다른 버튼을 사용해서 모니터 자체 설정으로 들어간다.  
> 2.일반 설정 메뉴로 들어가서 DisplayPort 버전이 `1.4` 로 되어 있으면 `1.2`로 변경한다.  
> 3.해상도가 변했는지 체크하고 변하지 않았다면 썬더볼트를 뺏다가 다시 낀 후 해상도가 변경되었는지 확인한다.  

---

## 서비스 데몬
### 서비스 등록
> 내가 사용하는 Dev 서버는 macOS 환경으로 Dev 서버에는 다음을 정의한다.  
> 1.LaunchAgents 디렉터리로 이동: `cd /Library/LaunchAgents`   
> 2.서비스 등록을 위한 plist 파일 생성: `sudo vi external-api.mvc.plist`
> ```xml
> <?xml version="1.0" encoding="UTF-8"?>
> <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
> <plist version="1.0">
>   <dict>
>     <key>KeepAlive</key>
>     <true />
>     <key>RunAtLoad</key>
>     <true/>
>     <key>Label</key>
>     <string>external-api.mvc</string>
>     <key>ProgramArguments</key>
>     <array>
>       <string>/usr/bin/nohup</string>
>       <string>java</string>
>       <string>-jar</string>
>       <string>-Dspring.profiles.active=dev</string>
>       <string>/Users/jujin/external-api/mvc/external-api-mvc-0.0.1-SNAPSHOT.jar</string>
>     </array>
>   </dict>
> </plist>
> ```
> 3.서비스 등록: `launchctl load /Library/LaunchAgents/external-api.mvc.plist`

### 서비스 재시작
> `launchctl stop external-api.mvc`
> launchctl 로드 `launchctl load external-api.mvc.plist` 해놓으면 stop 해도 자동으로 재실행된다.

---

## SSH 접속
### 클라이언트에서 SSH Key 생성
> ```bash
> $ ssh-keygen -t rsa
> Enter file in which to save the key (...): <enter>
> Enter passphrase (empty for no passphrase): <enter>
> Enter same passphrase again: <enter>
> 
> $ chmod 700 ~/.ssh
> $ chmod 600 ~/.ssh/id_rsa
> $ chmod 644 ~/.ssh/id_rsa.pub
> $ chmod 644 ~/.ssh/authorized_keys
> $ chmod 644 ~/.ssh/known_hosts
> ```

### 서버에 SSH Key 등록 
> 클라이언트의 `~/.ssh/id_rsa.pub` 의 내용을 복사해서 서버의 `~/.ssh/authorized_keys` 에 붙여넣는다.

### 서버 접속
> `ssh -i ~/.ssh/id_rsa.pub jujin@192.168.0.26` 

### 참조 사이트
> [SSH Key - 비밀번호 없이 로그인](https://opentutorials.org/module/432/3742)

---

## Terminal 
### iTerm2 
> 설치: `brew install --cask iterm2`  
> 
> iterm2 를 킨 후 preferences   
> Appearance -> Theme: Minimal  
> Profiles -> Session -> [Check]Status bar enabled, Configure Status Bar    
> `Job Name`, `CPU Utilization`, `Memory Utilization`, `Network Throughput`  
> Auto-Rainbow: `Light Colors`  
>
> 키보드 단축키 설정  
> 시스템 환경설정 -> 키보드 -> 키보드 단축키... -> 서비스 -> 파일 및 폴더 -> New iTerm2 Tab Here 에 F5 설정 후    
> 아무 폴더 연 후에 F5 눌러서 해당 경로로 iterm 열리는지 확인  

### Oh-My-Zsh
> 설치 : `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### powerlevel10k
> 사이트 방문: https://github.com/romkatv/powerlevel10k  
> README.md 에서 Installation 링크 클릭  
> Oh My Zsh 링크 클릭  
> 메뉴얼대로 터미널에 입력  
> 
> zsh 설정 변경: `vi ~/.zshrc` -> 기존 ZSH_THEME="robbyrussell" 주석 후 -> `ZSH_THEME="powerlevel10k/powerlevel10k"` 추가   
> iterm 완전 종료 후 재시작  
>
> Install Meslo Nerd Font: y  
> Prompt Style: 3 (Rainbow)  
> Show current time: 1 (No)  
> Prompt Separators: 1 (Angled)  
> Prompt Heads: 1 (Sharp)  
> Prompt Tails: 1 (Flat)

### Oh-My-Zsh 플러그인
> zsh-syntax-highlighting : zsh 문법 표시  
> 설치  
> ```shell
> cd ~/.oh-my-zsh/plugins   
> git clone https://github.com/zsh-users/zsh-syntax-highlighting.git   
> echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc  
> ```   
> .zshrc 수정 : `vi ~/.zshrc` -> `plugins=(git zsh-syntax-highlighting)`      
>  
> zsh-autosuggestions: shell 자동 완성  
> 설치   
> ```shell
> cd ~/.oh-my-zsh/plugins 
> git clone https://github.com/zsh-users/zsh-autosuggestions.git 
> echo "source ${(q-)PWD}/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
> ```  
> .zshrc 수정 : `vi ~/.zshrc` -> `plugins=(git zsh-syntax-highlighting zsh-git-prompt zsh-autosuggestions)`  

## Chrome Extension
### JSON Viewer
> [JSON View Chrome Extension 추가](https://chrome.google.com/webstore/detail/json-viewer/aimiinbnnkboelefkjlenlgimcabobli/related?hl=ko)

---

## Safari Extension 
### Mac AppStore for CLI
> Safari 확장 프로그램이 mac appstore로 편입되었다. mac appstore를 cli로 사용하기 위해서 mas를 설치한다.    
> mas 설치: `brew install mas`    
> mac appstore 로그인: `mas signin`    
> mac appstore 로그아웃: `mas signout`    
> mac appstore 설치 프로그램 목록 보기: `mas list`    
> 프로그램 찾기: `mas search 찾을 프로그램명`    
> 프로그램 설치: `mas install 프로그램명`    
> 프로그램 제거: `mas uninstall 프로그램명`    

---

## diskutil
### 목록/추출/삽입
> 연결된 디스크 목록 보기 - `diskutil list`    
> 결과 예시 : 
> ```bash
> /dev/disk0 (internal, physical):
>    #:                       TYPE NAME                    SIZE       IDENTIFIER
>    0:      GUID_partition_scheme                        *1.0 TB     disk0
>    1:                        EFI EFI                     314.6 MB   disk0s1
>    2:                 Apple_APFS Container disk1         984.2 GB   disk0s2
> 
> /dev/disk1 (synthesized):
>    #:                       TYPE NAME                    SIZE       IDENTIFIER
>    0:      APFS Container Scheme -                      +984.2 GB   disk1
>                                  Physical Store disk0s2
>    1:                APFS Volume Macintosh HD - 데이터   216.6 GB   disk1s1
>    2:                APFS Volume Preboot                 90.1 MB    disk1s2
>    3:                APFS Volume Recovery                528.5 MB   disk1s3
>    4:                APFS Volume VM                      3.2 GB     disk1s4
>    5:                APFS Volume Macintosh HD            11.0 GB    disk1s5
> 
> /dev/disk3 (external, physical):
>    #:                       TYPE NAME                    SIZE       IDENTIFIER
>    0:      GUID_partition_scheme                        *1.0 TB     disk3
>    1:                        EFI EFI                     209.7 MB   disk3s1
>    2:                  Apple_HFS WD Elements             999.8 GB   disk3s2
> ```
>
> 특정 디스크 추출 : /dev/disk 옆에 external(외부)로 되어 있는 디스크만 추출 가능 - `diskutil unmount [IDENTIFIER]`     
> 예시 : `diskutil unmount disk3s2`  
>
> 특정 디스크 재삽입 : `diskutil unmount [IDENTIFIER]`    
> 예시 : `diskutil mount disk3s2`  

### 디스크 포맷
> 포맷 기본 - `diskutil eraseDisk [포맷] [새로 설정할 디스크 이름] [설계] [IDENTIFIER]`  
> EFI 파티션 없이 디스크 포맷하기 - `diskutil eraseDisk JHFS+ [새로 설정할 디스크 이름] MBR [IDENTIFIER]`     
> 예시) `diskutil eraseDisk JHFS+ MYDISK MBR disk3`  
> 참고사이트 : [Removing EFI partition from external Disk?](https://apple.stackexchange.com/questions/327283/removing-efi-partition-from-external-disk)  

---

### 시스템 정보 확인
> Hyper-V 지원 확인 - `sysctl kern.hv_support`  
> CPU 확인 - `sysctl -n machdep.cpu.brand_string`  
> GPU 확인 - `system_profiler SPDisplaysDataType`  

### 키보드 프로그램간 자동 한영 전환 옵션
> 시스템 환경 설정 -> 키보드 -> 입력 소스 -> `문서의 입력 소스로 자동으로 전환` 에 체크박스  

### Spotlight 키 변경
> 시스템 환경설정 -> 키보드 -> 단축키 -> Spotlight -> cmd + shift + space  

### 키보드 지연시간 변경
> 시스템 환경설정 -> 키보드 -> 키 반복 빠르게(MAX) / 반복 지연시간 짧게 MAX에서 한칸 아래  
> 좋은점 : 백스페이스 잘 들어서 빨리 지울 수 있음.  

## 문제 해결
### Git
> macOS - OS 업데이트 후 git 등 오류 발생 시 솔루션 : `xcode-select --install`
> 참고자료 : [링크](http://redutan.github.io/2015/10/05/osx-after-update-git-error)

## macOS에서 유용한 단축키 정리
### Finder
> | 설명                           | 단축키                          |                     
> |------------------------------|-----------------------------|
> |  command + shift + A         | 응용프로그램 폴더 열기                 |                
>  | command + shift + D         | 데스크탑 폴더 열기                   |                  
>  | command + shift + O         | 도큐먼트 폴더 열기                   |                  
>  | command + option + 전원 버튼    | Mac을 잠자기 상태로 전환              |             
>  | shift + control + 전원 버튼     | 디스플레이를 잠자기 상태로 전환            |            
>  | command + \                 | 1password 찾기                 |                

---

## Homebrew
> 설명 : macOS 전용 패키지 관리자    
> 공식 페이지 : [링크](https://brew.sh/index_ko)    
> Homebrew는 CLI 패키지 및 GUI 패키지를 설치할 수 있다.    
> CLI 패키지 관리자 : <b>brew [command]</b>     
> GUI 패키지 관리자 : <b>brew [command] --cask</b>  
> 
> 참조페이지   
> [링크](https://m.blog.naver.com/PostView.nhn?blogId=sarang2594&logNo=221246170677&proxyReferer=https%3A%2F%2Fwww.google.com%2F)  
> brew 패키지 관리하기 : [링크](https://rkjun.wordpress.com/2013/07/14/os-x-missing-package-manager-home-brew/)  

### Homebrew 설치
> <b>터미널(Terminal)</b> 에서 작업  
> 설치 명령어 : `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`  
> macOS Catalina 이후 버전 사용으로 인한 zsh 사용시에 brew를 통해 설치된 패키지 명령 사용을 위한 path 추가 : `echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.zshrc`  
> 
> Homebrew 를 통한 애플리케이션 설치 경로: `/opt/homebrew/Cellar`  

### brew(CLI 패키지 관리) 사용법
> 패키지(응용프로그램) 찾기 : `brew search [찾을 패키지명]`  
> 패키지 설치 : `brew install [패키지 명]`  
> 패키지 삭제(둘 중 아무거나 선택)  
> `brew remove [패키지명]`  
> `brew uninstall [패키지명]`
> 
> 설치된 패키지 목록 보기 : `brew list`  
> 패키지 저장소 추가 : `brew tap [저장소명]`  
> 패키지 전체 최신버전으로 업데이트 : `brew upgrade`

### ~~ brew cask(GUI 패키지 관리) 사용법 ~~
> 더이상 cask 명령을 사용하지 않음.  

### brew services
> brew로 설치한 애플리케이션 실행 및 서비스 등록 관리  
> 애플리케이션 리스트 보기: `brew services list`    
> 실행: `brew services start [app]`  
> 종료: `brew services stop [app]`  
> 상태 보기: `brew services info [app]`   

### JDK
> Homebrew 를 통해서 amazon corretto 의 이전 버전을 설치하기 위해서는 먼저 `homebrew/cask-versions` 을 탭해야한다.   
> `brew tap homebrew/cask-versions`
> 
> corretto 8 설치 : `brew install corretto8`    
> corretto 11 설치 : `brew install corretto11`  
> 
> terminal java version 설정
> ```
> vi ~/.zshrc
> 
> ...
> # Java Paths
> export JAVA_HOME_11=$(/usr/libexec/java_home -v11)
> export JAVA_HOME_8=$(/usr/libexec/java_home -v1.8)
> 
> # Java Home Setting
> export JAVA_HOME=$JAVA_HOME_11
> :wq
> source ~/.zshrc
> ```

### JetBrain Toolbox
> 설치 : `brew install --cask jetbrains-toolbox`  

### Visual Studio Code
> 설치 : `brew install --cask visual-studio-code`  

### Docker Desktop
> 설명 : 가상화 머신  
> 설치 : `brew install --cask docker`  

### netcat
> 설명 : 통신을 리스닝 서버를 netcat 명령어를 통해 간단하게 실행 가능  
> 설치 : `brew install netcat`  
> 
> 사용법   
> 1.외부 서버에 특정 포트로 접속이 가능한지 확인 : `nc -z [외부 서버 주소] [포트]`  
> 2.Listening 서버를 로컬에 띄우기 : `nc -l [포트]`  

### ngrok
> 설명 : 외부망에서 tcp 접속할 수 있도록 지정 포트를 ngrok에서 제공해주는 도메인 및 포트에 바인딩해준다.    
> 주의 : 회원가입 필요(무료)    
> 설치 : `brew install ngrok`    
> 사용법 : `ngrok tcp [로컬 서버 프로세스의 포트]`    

### Packet Sender
> 설치 : `brew install --cask packetsender`  

### Wireshark
> 설명 : 패킷 검사 툴  
> 설치 : `brew install --cask wireshark`    

### tomcat
> tomcat 7 설치 : `brew install tomcat@7`  
> tomcat 8 설치 : `brew install tomcat@8`  
> tomcat 9 설치 : `brew install tomcat@9`  
> [macOS Apache Tomcat 설치, 아파치 톰캣 실행 방법](https://whitepaek.tistory.com/12)  

### nosqlbooster for MongoDB 
> 설명 : mongoDB GUI 관리툴   
> 설치 : `brew install --cask nosqlbooster-for-mongodb`  
> 참고 사이트 : [Install MongoDB Community Edition on macOS](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/)    

### Github Desktop
> 설명 : 앱으로 Github 관리 
> 설치 : `brew install --cask github`

### htop
> 설명 : top 명령어를 좀 더 시각적으로 나타냄  
> 설치 : `brew install htop`  

### m-cli
> 설명 : 맥 시스템 제어  
> `brew install m-cli`  
> 참조사이트 : [맥을 터미널로 제어할 수 있는 세 가지 명령어 유틸리티 m, mac, mas](https://nolboo.kim/blog/2016/09/03/control-mac-with-terminal/)  
> OS 시스템 정보 얻기 - `m info`  
> 네트워크 인터페이스 보기 - `m network ls`  
> 확인 없이 재시작 - `m restart -f`  
> 확인 없이 종료 - `m shutdown -f`  
> 스크린세이버 실행 - `m screensaver`  
> 휴지통 비우기 - `m trash clean`  
> 와이파이 비밀번호 - `m wifi showpassword`  

### mac
> 설명 : 개발 관련 명령  
> 실제 실행 파일이라기 보다는 명령어를 입력하면 다른 명령어로 변환해서 시스템에 입력시켜줌.  
> 주의) 다른 명령어들을 모두 설치해야함으로 설치가 오래걸리고 설치하지 않을 경우 해당 명령은 실행 불가  
> `sh -c "$(wget https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install -O -)"`  
> 사용중인 포트 보기 - `mac ports`  
> 로컬 IP 주소 보기 - `mac ip:local`  
> 퍼블릭 IP 주소 보기 - `mac ip:public`  
> 인터넷 스피드 테스트 - `mac speedtest`  
> 볼륨 모두 추출 - `mac eject-all`  
> 기타 SSH 관련 -   
> ```text
> SSH Utilities: 
> mac ssh:download-file X: Download file from remote server through SSH - X = Path of the remote file to download 
> mac ssh:download-folder X: Download entire folder from remote server through SSH - X = Path of the remote folder to download 
> mac ssh:download-database X: Download database from remote server through SSH - X = Name of the database to download 
> mac ssh:sync:local X: Sync local folder with remote folder using rsync through SSH (download remote folder to local folder)
> mac ssh:sync:remote X: Path of the remote folder to sync from local folder (upload local folder to remote folder) 
> mac ssh:upload X: Upload file to remote server through SSH - X = Path of the file to upload to the remote server 
> mac ssh:public-key X: Get public SSH key for local machine 
> ```

### Chrome
> 설명 : Google의 인터넷 브라우저 <b>(업데이트 문제 때문에 브라우저로 직접 다운로드 받는걸 추천)</b>      
> 설치 : `brew install --cask google-chrome`      

### TimeMachine Editor
> 설명 : 맥 자동백업 프로그램인 타임머신 설정 프로그램   
> 설치 : `brew install --cask timemachineeditor`    

### Macs Fan Control
> 설명 : 맥에서 도는 팬의 회전수 / 온도 체크  
> 설치 : `brew install --cask macs-fan-control`  

### App Cleaner
> 설명 : 프로그램 삭제툴
> 설치 : `brew install --cask appcleaner`  

### Slack
> 설명 : 사내 메신져  
> 설치 : `brew install --cask slack`    

### Mounty
> 설명 : NTFS 쓰기 for macOS  
> 설치 : `brew install --cask mounty`  

### 에러 1
> 로그 : `/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in 'require': cannot load such file -- active_support/core_ext/object/blank (LoadError)`
> 대처 : `brew update-reset`

## 링크를 통한 다운로드가 필요한 패키지 항목
### eGPU
> 설명 : <b>Thunderbolt 3</b>를 지원하지 않는 맥에서 외장 그래픽(External GPU)를 연결할 수 있도록 해주는 스크립트  
> 설치 : `curl -qLs $(curl -qLs https://bit.ly/2WtIESm | grep '"browser_download_url":' | cut -d'"' -f4) > purge-wrangler.sh; bash purge-wrangler.sh; rm purge-wrangler.sh`  
> 공식 사이트 : [링크](https://github.com/mayankk2308/purge-wrangler)  

### logitech options
> 설명 : logitech 키보드 및 마우스 설정  
> 다운로드 : [링크](https://www.logitech.com/ko-kr/product/options)  

### LG 모니터 소프트웨어
> 다운로드 : [링크](https://www.lgservice.co.kr/search/driverSoftTotalSearchPage.do?type=3&searchKeyWord=34WK95U)  

### Folx
> 다운로드 : [링크](https://mac.eltima.com/ko/download-manager.html)  
