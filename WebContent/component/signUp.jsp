<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div id="signUp">
        <h2>회원가입</h2>
        <hr>
        <div id="signForm">
            <form action="#" method="post">
                <div id="signId" class="signInputForm">
                    <div class="signInput">
                        <label for="id">아이디</label> <br>
                        <input type="text" id="id" name="id" placeholder="아이디">
                    </div>
                    <span class="constraint">*4~20자의 알파벳, 숫자, 언더스코어(_)만 사용가능</span>
                </div>
                <div id="signNickName" class="signInputForm">
                    <div class="signInput">
                        <label for="nickName">닉네임</label> <br>
                        <input type="text" id="nickName" name="nickName" placeholder="닉네임">
                    </div>
                    <span class="constraint">*4~20자의 알파벳, 숫자, 언더스코어(_)만 사용가능</span>
                </div>
                <div id="signpwd" class="signInputForm">
                    <div class="signInput">
                        <label for="pwd">비밀번호</label> <br>
                        <input type="password" id="pwd" name="pwd" placeholder="비밀번호" required>
                    </div>
                    <span class="constraint">*8~30자의 알파벳, 숫자만 사용가능</span>
                </div>
                <div id="signpwdCheck" class="signInputForm">
                    <div class="signInput">
                        <label for="pwdCheck">비밀번호 확인</label> <br>
                        <input type="password" id="pwdCheck" name="pwdCheck" placeholder="비밀번호 확인" required>
                    </div>
                    <span class="constraint">*비밀번호는 같아야합니다</span>
                </div>
                <div id="signpEmail" class="signInputForm">
                    <div class="signInput">
                        <label for="eMail">이메일</label> <br>
                        <input type="email" id="eMail" name="eMail" placeholder="이메일" required>
                    </div>
                    <span class="constraint">*필수입니다</span>
                </div>
                <div id="signAge" class="signInputForm">
                    <div class="signInput">
                        <label for="year">생년월일</label> <br>
                        <input type="email" id="year" name="year" placeholder="년(4자)" required>
                        <select name="month" id="month">
                            <option value="0">월</option>
                            <option value="1">1월</option>
                            <option value="2">2월</option>
                            <option value="3">3월</option>
                            <option value="4">4월</option>
                            <option value="5">5월</option>
                            <option value="6">6월</option>
                            <option value="7">7월</option>
                            <option value="8">8월</option>
                            <option value="9">9월</option>
                            <option value="10">10월</option>
                            <option value="11">11월</option>
                            <option value="12">12월</option>
                        </select>
                        <input type="email" id="day" name="day" placeholder="일" required>
                    </div>
                    <span class="constraint">*필수입니다</span>
                </div>
                <div id="signBtn">
                    <button type="submit">회원가입</button>
                </div>
            </form>
        </div>
    </div>