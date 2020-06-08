1. https://git-scm.com에서 접속하여 Git-2.27.0-64-bit를 다운로드하여 설치

2. 설치시 두 번째 대화상자의 선택 옵션에서 Use Git from the Windows Command Orompt를 선택하여 설치할 것. (Git bash)

3. 설치가 끝나면 git bash를 시작메뉴에서 찾아 실행

4. 기본 버전 : git --version, 도움말 확인 명령 : git --help

5. github.com에 접속하여 로그인 

6. git bash에서 프로젝트 폴더를 만듬
    ex1) cd d:\;
    ex2) mkdir yhs(자기이름이니셜)
    ex3) cd yhs
    ex4) mkdir test-code
    ex5) ls -al (폴더 구조보기)

7. git bash에서 ssh-keygen 으로 암호키를 생성

8. 생성된 키젠이 있는 디렉토리로 이동해서 id_rsa.pub파일을 찾아 열고 그 안의 내용을 복사하기 한다. (C드라이브->사용자->사용자이름폴더->.ssh폴더) 
   (파일 그대로는 안열리니 연결프로그램 메모장으로 연결해서 복사)

9. 로그인 된 github에서 가장 오른쪽의 메뉴의 setting을 선택하고, SSH and GPG keys 메뉴(8번째에 있음) 선택

10. SSH 항목의 [New SSH keys]버튼을 눌러 나오는 창에 
    title : ssh key
    key : 복사히기한 id_rsa.pub파일의 sshkey값을 복사해서 붙여넣기하여 키를 등록

11. git Bash에서 사용자를 등록
    git config --global user.name "사용자 아이디"
    git config --global user.email "사용자 이메일주소" (깃허브 가입한 이메일)
    
12. git Bash의 해당 프로젝트 디렉토리에서 디렉토리를 초기화
    git init
