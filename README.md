# asked

# 1. question (질문자이름, 내용)
# - controller : question
  - action : index, show
        - index.erb : form 질문을 받는다.(익명, 내 이름을 쓸 수도있음)
        - show : 입력된 질문을 보여준다.
  - model : 
        - name (질문자이름)
        - content (내용)
        
        
# 회원가입
== database 유저 정보를 저장하는 것
1. user 테이블 생성
 - user model
2. user 정보를 저장
 - 회원정보를 받아, db에 저장
 
 # 로그인
 == session 유저 정보를 검증을 거친 후 저장하는 것
 1. user 정보를 받는다.
 2. 받은 user 정보와 db의 user 정보가 일치하는 지 확인
 3. if 일치, session에 유저 정보를 넣는다.
        session[:email] = 유저 정보
    else, 이유를 말해주고 로그인 안시킨다.
4. 로그아웃
    session.clear