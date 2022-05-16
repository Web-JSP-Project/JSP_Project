<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <div id="boardList">
        
        <div id="board-search">
            <div class="container">
                <div class="search-window">
                    <form action="">
                        <div class="search-wrap">
                            <label for="search" class="blind">공지사항 내용 검색</label>
                            <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
                            <button type="submit" class="btn btn-dark">검색</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    <table class="sub_news" border="1" cellspacing="0">
        <colgroup>
            <col>
            <col width="110">
            <col width="100">
        </colgroup>
        <thead>
            <tr>
                <th scope="col">제목</th>
                <th scope="col">이름</th>
                <th scope="col">날짜</th>
            </tr>
        </thead>
        <tbody>
            <tr onClick=location.href="boardItem.jsp">
                <td class="title">제목1</td>
                <td class="name">닉네임</td>
                <td class="name">날짜</td>
            </tr>
            <tr onClick=location.href="boardItem.jsp">
                <td class="title">제목2</td>
                <td class="name">닉네임</td>
                <td class="name">날짜</td>
            </tr>
            <tr onClick=location.href="boardItem.jsp">
                <td class="title">제목3</td>
                <td class="name">닉네임</td>
                <td class="name">날짜</td>
            </tr>
            <tr onClick=location.href="boardItem.jsp">
                <td class="title">제목4</td>
                <td class="name">닉네임</td>
                <td class="name">날짜</td>
            </tr>
            <tr onClick=location.href="boardItem.jsp">
                <td class="title">제목5</td>
                <td class="name">닉네임</td>
                <td class="name">날짜</td>
            </tr>
            <tr onClick=location.href="boardItem.jsp">
                <td class="title">제목6</td>
                <td class="name">닉네임</td>
                <td class="name">날짜</td>
            </tr>
            <tr onClick=location.href="boardItem.jsp">
                <td class="title">제목7</td>
                <td class="name">닉네임</td>
                <td class="name">날짜</td>
            </tr>
            <tr onClick=location.href="boardItem.jsp">
                <td class="title">제목8</td>
                <td class="name">닉네임</td>
                <td class="name">날짜</td>
            </tr>
            <tr onClick=location.href="boardItem.jsp">
                <td class="title">제목9</td>
                <td class="name">닉네임</td>
                <td class="name">날짜</td>
            </tr>
            <tr onClick=location.href="boardItem.jsp">
                <td class="title">제목10</td>
                <td class="name">닉네임</td>
                <td class="name">날짜</td>
            </tr>
        </tbody>
    </table>
</div>