<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>SSM 框架整合</title>

    <!-- Bootstrap core CSS -->
    <link th:href="@{/static/css/bootstrap.min.css}" rel="stylesheet">

</head>
<body style=" background: url(http://global.bing.com/az/hprichbg/rb/RavenWolf_EN-US4433795745_1920x1080.jpg) no-repeat center center fixed; background-size: 100%;">

    <form class="form-signin" th:action="@{/admin/loginVerify}" method="post">
        <div class="modal-dialog" style="margin-top: 10%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title text-center" id="myModalLabel">管理员登录</h4>
                </div>
                <div class="modal-body" id = "model-body">
                    <p style="color: red" th:text="${msg}" th:if="${not #strings.isEmpty(msg)}"></p>
                    <div class="form-group">
                        <input type="text" name="username" required="required" class="form-control"placeholder="用户名" >
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" required="required" class="form-control" placeholder="密码" >
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary form-control">登录</button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </form>

    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" th:src="@{/static/js/jquery-3.2.1.slim.min.js}"></script>
    <script type="text/javascript" th:src="@{/static/js/popper.min.js}"></script>
    <script type="text/javascript" th:src="@{/static/js/bootstrap.min.js}"></script>
</body>
</html>