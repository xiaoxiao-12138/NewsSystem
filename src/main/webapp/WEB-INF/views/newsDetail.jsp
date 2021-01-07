<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>SSM 框架整合</title>

    <!-- Bootstrap core CSS -->
    <link th:href="@{/static/css/bootstrap.min.css}" rel="stylesheet">

</head>
<body>


<div class="container" style="margin-top: 50px;">
    <div class="card">
        <div class="card-header">
            <h2 class="mc-ui-flex-center" style="text-align: center" th:text="${news.getTitle()}">标题</h2>
        </div>
        <div class="card-body">
            <p class="form-text text-muted">
                内容：<br>
            </p>
            <p class="form-text text-muted" th:text="${news.getContent()}">
                我是一段文字
            </p>
        </div>
        <div class="card-footer mc-ui-flex-end" style="text-align: end">
            <small>来源：</small>
            <small th:text="${news.getSource()}">小字</small>
            <br>
            <small>时间：</small>
            <small th:text="${#dates.format(news.getIssueTime(), 'yyyy-MM-dd HH:mm')}">小字</small>
        </div>
    </div>
</div>

    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" th:src="@{/static/js/jquery-3.2.1.slim.min.js}"></script>
    <script type="text/javascript" th:src="@{/static/js/popper.min.js}"></script>
    <script type="text/javascript" th:src="@{/static/js/bootstrap.min.js}"></script>
</body>
</html>