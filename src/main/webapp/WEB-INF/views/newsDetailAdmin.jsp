<!DOCTYPE html>
<!-- saved from url=(0052)http://getbootstrap.com/docs/4.0/examples/dashboard/ -->
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dashboard Template for Bootstrap</title>
    <!-- Bootstrap core CSS -->
    <link th:href="@{/static/css/bootstrap.min.css}" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link th:href="@{/static/css/dashboard.css}" rel="stylesheet">
    <style type="text/css">
        /* Chart.js */

        @-webkit-keyframes chartjs-render-animation {
            from {
                opacity: 0.99
            }
            to {
                opacity: 1
            }
        }

        @keyframes chartjs-render-animation {
            from {
                opacity: 0.99
            }
            to {
                opacity: 1
            }
        }

        .chartjs-render-monitor {
            -webkit-animation: chartjs-render-animation 0.001s;
            animation: chartjs-render-animation 0.001s;
        }
    </style>
    <!-- 引入 echarts.js -->
    <script type="text/javascript" th:src="@{/static/js/echarts.min.js}"></script>
</head>

<body>
<!--插入commons页面的顶部导航栏组件-->
<div th:insert="~{commonsAdmin::topBar}"></div>

<div class="container-fluid">
    <div class="row">

        <!--插入commons页面的侧边栏组件-->
        <div th:insert="~{commonsAdmin::#sideBar(activeUri='newsList')}"></div>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
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
        </main>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" th:src="@{/static/js/jquery-3.2.1.slim.min.js}"></script>
<script type="text/javascript" th:src="@{/static/js/popper.min.js}"></script>
<script type="text/javascript" th:src="@{/static/js/bootstrap.min.js}"></script>

<!-- Icons -->
<script type="text/javascript" th:src="@{/static/js/feather.min.js}"></script>
<script>
    feather.replace()
</script>

<!-- Graphs -->
<script type="text/javascript" th:src="@{/static/js/Chart.min.js}"></script>

</body>

</html>