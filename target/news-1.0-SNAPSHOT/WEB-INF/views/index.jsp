<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>SSM 框架整合</title>

    <!-- Bootstrap core CSS -->
    <link th:href="@{/static/css/bootstrap.min.css}" rel="stylesheet">

</head>
<body>

<div class="row">

    <form th:action="@{/findNewsByTitle}" class="col-lg-12 mc-ui-flex-end">
    <div class="col-lg-12 mc-ui-flex-end" style="top: 15px; padding-top: 0px; padding-left: 47px;">
        <div class="input-group mb-3 input-group-lg mc-ui-flex-end" style="min-width: 0%; max-width: 75%; padding-left: 150px;">

            <input class="form-control" name="title" type="text" placeholder="请输入关键词" />
            <div class="input-group-append">
                <button class="btn btn-primary" type="submit">搜索</button>
            </div>

        </div>
    </div>
    </form>

    <div class="col-lg-12" style="top: 25px; left: 65px;">
        <div class="row" style="top: 20px; left: 0px; padding-left: 60px;">
            <div class="col-sm-6" style="width: 0%; max-width: 25%;">
                <div class="list-group">
                    <a class="list-group-item list-group-item-action" th:href="@{/index}">全部</a>
                    <a class="list-group-item list-group-item-action" th:href="@{/allNewsById/}+${category.getId()}" th:each="category:${categorys}" th:text="${category.getCategoryName()}">链接1</a>
                </div>
            </div>
            <div class="col-sm-6" style="max-width: 200%; width: 58.8878%;">
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between" th:each="new1:${news}">

                        <div>
                            <a class="my-0" th:href="@{/findNewsById/}+${new1.getId()}" th:text="${new1.getTitle()}">苹果</a>
                            <br>
                            <small class="text-muted" th:each="category:${categorys}" th:if="${new1.getCid()}==${category.getId()}" th:text="${category.getCategoryName()}">这是一个苹果</small>
                        </div>
                        <span class="text-muted" th:text="${#dates.format(new1.getIssueTime(), 'yyyy-MM-dd HH:mm')}">¥:1</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" th:src="@{/static/js/jquery-3.2.1.slim.min.js}"></script>
    <script type="text/javascript" th:src="@{/static/js/popper.min.js}"></script>
    <script type="text/javascript" th:src="@{/static/js/bootstrap.min.js}"></script>
</body>
</html>