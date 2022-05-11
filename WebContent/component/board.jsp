<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="postBox">
        <section class="notice">
            <!-- board seach area -->
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
             
            <!-- board list area -->
            <div id="board-list">
                <div class="container">
                    <table class="board-table">
                        <thead>
                            <tr>
                                <th scope="col" class="th-num">번호</th>
                                <th scope="col" class="th-title">제목</th>
                                <th scope="col" class="th-date">등록일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>3</td>
                                <th>
                                    <a href="#!">[공지사항] 개인정보 처리방침 변경안내처리방침</a>
                                    <p>테스트</p>
                                </th>
                                <td>2017.07.13</td>
                            </tr>
        
                            <tr>
                                <td>2</td>
                                <th><a href="#!">공지사항 안내입니다. 이용해주셔서 감사합니다</a></th>
                                <td>2017.06.15</td>
                            </tr>
            
                            <tr>
                                <td>1</td>
                                <th><a href="#!">공지사항 안내입니다. 이용해주셔서 감사합니다</a></th>
                                <td>2017.06.15</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>