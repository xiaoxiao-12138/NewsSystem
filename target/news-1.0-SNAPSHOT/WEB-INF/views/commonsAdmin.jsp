<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<!-- Bootstrap core CSS -->
<link th:href="@{/static/css/bootstrap.min.css}" rel="stylesheet">

<!--头部导航栏-->
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0" th:fragment="topBar">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">[[${session.admin.username}]]</a>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" th:href="@{/admin/logout}">注销</a>
        </li>
    </ul>
</nav>

<!--侧边栏-->
<nav class="col-md-2 d-none d-md-block bg-light sidebar" th:fragment="sideBar" id="sideBar">
    <div class="sidebar-sticky">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a th:class="${activeUri=='categoryList'?'nav-link active':'nav-link'}" th:href="@{/admin/categoryList}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart-2">
                        <line x1="18" y1="20" x2="18" y2="10"></line>
                        <line x1="12" y1="20" x2="12" y2="4"></line>
                        <line x1="6" y1="20" x2="6" y2="14"></line>
                    </svg>
                    类型查看
                </a>
            </li>
            <li class="nav-item">
                <a th:class="${activeUri=='categoryInput'?'nav-link active':'nav-link'}" th:href="@{/admin/categoryInput}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file">
                        <path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
                        <polyline points="13 2 13 9 20 9"></polyline>
                    </svg>
                    类型发布
                </a>
            </li>
            <li class="nav-item">
                <a th:class="${activeUri=='newsList'?'nav-link active':'nav-link'}" th:href="@{/admin/newsList}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart-2">
                        <line x1="18" y1="20" x2="18" y2="10"></line>
                        <line x1="12" y1="20" x2="12" y2="4"></line>
                        <line x1="6" y1="20" x2="6" y2="14"></line>
                    </svg>
                    新闻查看
                </a>
            </li>
            <li class="nav-item">
                <a th:class="${activeUri=='newsInput'?'nav-link active':'nav-link'}" th:href="@{/admin/newsInput}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file">
                        <path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
                        <polyline points="13 2 13 9 20 9"></polyline>
                    </svg>
                    新闻发布
                </a>
            </li>
        </ul>
    </div>
</nav>

<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" th:src="@{/static/js/jquery-3.2.1.slim.min.js}"></script>
<script type="text/javascript" th:src="@{/static/js/popper.min.js}"></script>
<script type="text/javascript" th:src="@{/static/js/bootstrap.min.js}"></script>

</html>