# Final_ISOUR
ISOUR Final Project
22.12.11(일)

♥ 조혜경
- 매칭페이지에서 채팅 버튼 누르면 내 채팅 목록에 추가됨
- 쪽지 기능은 원래와 마찬가지로 잘 됨
- 상대방에게 쪽지를 보냈을 때에만 상대방 채팅 목록에 추가됨
- 매칭 전에 채팅 페이지로 들어가면 매칭 페이지로 돌려보냄(그러니까 친구가 없으면!!! 친구 만들라고 매칭 페이지로 보냄)

22.12.09 (금)

이동균
-MyPage 수정중에 혜정님이 하신게 더 잘하셔서 만들던거 삭제함..

우혜정 
- 매칭시 다음페이지 없으면 버튼 비활성화
- 매칭 회원 없어도 내 정보는 보이도록 수정
- HOME 화면 공룡게임 추가 및 css 
- 회원가입 CSS 80% 완

♥ 전규한

- mbti 검사 페이지 css 피드백 반영 수정
- 로그인시 엔터 이팩트 추가

♥ 조혜경
- 쪽지가 없을 때 쪽지함 화면 접근 안 됨
- 쪽지 없을 때에도 쪽지함 화면 접근하고, 쪽지가 없습니다 문구 보여주고,
- 페이지네이션 1로 넣어줌
- (3차)
- 페이지네이션에서 6페이지까지인데도 페이지바에 무한으로 생성되는 거 고침(페이지네이션만 푸시됨)
- test 폴더 삭제
- (3차-1) 재푸시
- 쪽지함에 페이지 이동하면 쪽지 이동하는 거(까먹고 포스트박스 푸시 안 해서 지금 함)
- 



22.12.08 (목)

♥ 이동균

1 mypage css 수정

♥ 전규한

- mbti 검사 페이지 css 피드백 반영 수정
1. 검사 선택지 글자에서 div border 로 모양 만듬
2. 선택지 hover 기능 추기
3. 결과 페이지 카드 모양으로 형성
4. mbti 페이지 1180 넓이에 옅은 배경색 추가
5. navigate 로 클릭시 '/matching' 페이지로 이동 추가

우혜정 
- 채팅 친구 목록 불러오기 서버 구현(근데 안 쓸거 같음..)
- HOME 디자인 작업 중...(하고 싶은게 잘 안됨...)

22.12.07(수)

우혜정 
- 매칭페이지 CSS 완
- 매칭에서 채팅하기 클릭 시 매칭친구 테이블에 저장

♥ 전규한

- mbti 검사 페이지 css
- mbti 결과페이지 이미지에 설명 링크 걸어둠.

♥ 조혜경
- 쪽지함 css
- 쪽지함 페이지네이션
- (2차) 네비바 필요한 페이지에서만 보이게 수정 완!(혜정님이 찾아준 링크로)

22.12.05(월)

우혜정 
- 카카오톡 회원가입시 회원정보 다 입력하면 DB에 저장으로 변경.
- 카카오톡 가입 여부 확인 후 로그인 또는 회원가입창으로 이동.
- 카카오톡 로그인 정보로 MBTISOUR 회원정보 가져옴.
- 로그인 정보 세션에 저장.
- 인텔리제이 memberInfo id_num -> idNum 으로 변수명 변경 (레포지포리에서 언더바(_) 인식 오류로 변경함. 현재 적용된 부분은 수정하였음.)

♥ 전규한

- 구글 이메일 받아온 것 자동으로 이메일 입력란에 입력되게(정규식 자동 통과)
- 쿠키 만료 시기 0으로 세팅(화면 끄고 재시작시 자동 로그아웃)
- 모든 페이지 localStorage => cookie로 대체
- 로그아웃 쿠키 수정 완료 // home, mypage, 매칭 , mbti페이지, 포스트박스, 로그인 페이지 변경완 (안된 부분있으면 말해주세요)
- 자동 로그인 구현 (자동로그인 버튼 체크후 로그인시 바로 꺼도 유지됨 (7일 기간 설정) 체크 안할시 끄면 바로 로그아웃)


22.12.04(일)

♥ 전규한

- 구글 로그인 (email 존재하면 바로 로그인 , email 존재하지 않으면 회원가입 창으로 이동)
- mypage 로그아웃 부분 2줄 수정(아이디 존재하면 유지되게끔)

22.12.02(금)

우혜정 
- 카카오톡로그인 DB 저장까지 완
- 회원가입 후 id_num 받아서 업데이트 구현 

♥ 이동균
- 약관 동의 css 완료(추후에 더 바꿔야함)
- 화면 비율 조정 완료

♥ 전규한
- 비밀번호 찾기 후 화면 내에서 모달창으로 비밀번호 변경 가능하게 했음.(혜경님 Mypage 비밀번호 변경 모달창 )

♥ 이민형
- 파이어베이스와 프론트 연결 및 데이터 전송 성공
- 정상적으로 채팅기능 작동
- roomId를 키값으로 넘겨서 roomId로 정렬하는 것까지 완료
- 기존의 채팅방 접속시 무한으로 넘어가던 값을 input시에만 값이 넘어가게 변경
- roomId로 방목록 구현예정
- socket통신을 무한으로 담기(cookie필요 또는 없앨 예정)
- 
♥ 조혜경
- 매칭 페이지에서 쪽지 보내기 기능 구현

22.12.01(목)

♥ 이동균
- 로그인,회원가입 컨테이너 박스 사이즈 픽스(완료)
- 전반적인 input,text 비율 조절
- Nav바 폰트 추가 완료


♥ 전규한
- Sign up 페이지 이메일 인증
- 양식에 맞게 이메일 입력해야 이메일 인증 버튼 생성, 이메일 인증 해야 회원가입 최종 진행 가능.
- 이메일 중복 기능 (완) (이메일 중복 확인 -> 이메일 인증 버튼 활성화), 부트스트랩 안쓰는 모달창으로 변경(완)
- 이메일 중복 확인 한 후 중복되지 않으면 입력된 이메일 값 변경 불가능하게 기능 추가.
- 비밀번호 찾을 때 이메일 인증으로 비밀번호 변경 가능하게

♥ 조혜경
- MyModal 추가(입맛대로 수정 가능할 듯)
- 마이페이지에서 닉네임 - 중복확인, 수정 가능
- 마이페이지에서 자기소개 - 수정 가능
- 비밀번호는 모달창 구현 고민중
- (3차)
- I_MEMBER 테이블에서 id, nickname, email unique 속성 추가, pwd 업데이트 가능하게 속성 변경
- 회원탈퇴 모달창 구현, 탈퇴 가능
- 비밀번호 모달창 구현 완료, 수정 가능
- (4차)
- 안 쓰는 MemberUpdate, MemberDrop 파일 삭제
- 작업중이던 My 파일을 Mypage로 바꿈
- (5차)
- 파일 이름은 MyPage.js 인데 안에는 Mypage로 만들고 Mypage로 임포트함(그래서 오류났었음)

22.11.30(수)

♥ 조혜경 
- 회원가입에 닉네임, 닉네임 중복확인, 자기소개 추가
- (2차) +파이어베이스 설치
- 프로필 이미지 미리보기, 등록, 삭제
- <My> 여기에 마이페이지 새로 만듬
- 주소랑 이메일 변경 가능
- 나머지 변경 가능한 항목에 대해서도 수정되게 해야함

22.11.29(화)

♥ 우혜정
- 매칭 친구 추천 2명씩 보이도록 구현
- 랜덤 매칭 구현 완
- MBTI 테이블 생성(오라클, MySQL ver)
- 서버 실행 후 회원가입 테스트에서 임시 회원 생성

♥ 이민형
- 채팅 내역 프론트 연결 
- 채팅시간, 채팅내용, 채팅번호(필요없으나 일단 관리목적상 넣어둠)]
- 채팅시간 밀리초삭제방법구현(with. 혜정)

22.11.28(월)

♥ 이동균
- 네비바 라우터 적용
- Main 화면 디자인 설계
- 로그인페이지 디자인 설계 (box 폼 사이즈 조절중)
- 회원가입페이지 css입히는중

♥ 조혜경
- 회원가입할 때, Terms 테이블에도 동의 여부 저장되게 완료
- Terms(약관 동의 여부 저장) 테이블 생성
- TermsRepository 생성
- 내용이 긴 필수 약관을 어떻게 보여줄지 고민(아이콘 클릭하면 전체 페이지가 보이게 할 건지, 네이버처럼 조금만 보이게 할 건지)

♥ 이민형
- 채팅 내용 DB저장 연결 성공
- 채팅 테이블 생성
- 채팅을 NICKNAME과 어떻게 매칭할 것인지 고민
- 채팅 시간 DB연결 및 저장 성공

22.11.27(일)

♥ 조혜경
- 아이셔로고.png → 아이셔용.png
- SignUp 에서 필수 약관동의했을 때만 회원가입 가능
- Postbox 로딩중일 때 아이셔용 보이게
- 동의한 항목 값을 어떻게 넘길건지 고민해볼 것!

22.11.25(금)

♥이동균
- 네비바 링크 연결중(Main, MBTI, MBTI정보 링크 연결)
- 메인 아직 디자인중
- 매칭페이지 자리 틀만 잡음(추후에 더 잡아야함)

♥ 전규한
- 회원가입 이메일 입력 추가
- 로그인페이지 lost password 페이지를 -> 아이디/비밀번호 찾기 페이지로 변경
- 한 화면 내에서 mode 변경을 통해 위의 아이디/ 비밀번호 클릭하면 해당 기능 이용 가능
- 아이디 찾기 -> 이메일 주소/ 생년월일 일치하면 -> alert 창에 아이디 출력
- 비밀번호 찾기 -> 아이디/ 이메일주소/ 생년월일 일치하면 -> alert 창에 회원정보 일치 문구뜸
- (향후에 이메일 인증 후 비밀번호 변경하는 시스템 구축 예정)


♥ 조혜경
- 쪽지 삭제 후 자동 새로고침 완료
- 약관 진행중...
- (2차)
- App_Test 를 App 으로 옮기고 삭제
- 필요없는 App.test.js 삭제
- index.js 에서 App 으로 변경

22.11.24(목)

♥ 조혜경
- 쪽지함 불러오기
- 전체선택 및 해제 기능 구현
- 쪽지 삭제 기능 구현
- 쪽지 삭제 후 새로고침 필요(새로고침 안 하면 삭제한 쪽지도 조회됨)

♥ 이동균
- (메인 container중 max-width 1080=> 1180으로 늘려봄(늘린 이유 : 생각보다 화면 공간이 적음)
- 현재 계속 진행중..(끝나면 메인 화면 구현예정입니다)

♥ 전규한
- (연결 정상 작동 확인 완)
- MBTI 검사 페이지(선택지 6개, 결과 바로 DB 저장, 결과페이지 궁합 MBTI 추천)



22.11.23(수)
- 기존 프론트 + 인텔리제이 연결 완
- 매칭 페이지 UI 작업 중


22.11.21(월)
START!!
