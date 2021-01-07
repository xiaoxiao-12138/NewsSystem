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
        <div th:insert="~{commonsAdmin::#sideBar(activeUri='categoryList')}"></div>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <form th:action="@{/admin/categoryUpdate}">
            <div class="row" style="margin-top: 50px; padding-left: 0px;">
                <div class="col-sm-12" style="margin-top: 20px; padding-left: 100px;">
                    <strong>更新新闻类型</strong>
                </div>
                <div class="col-sm-12" style="margin-top: 20px; margin-bottom: 20px; padding-left: 100px;">
                    <small class="form-text text-muted">类型名</small>
                    <input hidden name="id" th:value="${category.getId()}">
                    <input class="form-control" style="max-width: 50%;" type="text" aria-describedby="emailHelp" th:value="${category.getCategoryName()}" name="categoryName" />
                </div>
                <div class="col-sm-12" style="padding-left: 500px;">
                    <button class="btn btn-success" type="submit">更新</button>
                </div>
            </div>
            </form>
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