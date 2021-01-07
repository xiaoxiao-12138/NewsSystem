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
            <div class="col-md-12 column">
                <table class="table table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>
                            序号
                        </th>
                        <th>
                            类型名
                        </th>
                        <th>
                            操作
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr th:each="category,cateGoryStat:${allCategory}">
                        <td th:text="${cateGoryStat.count}">
                            1
                        </td>
                        <td th:text="${category.getCategoryName()}">
                            TB - Monthly
                        </td>
                        <td>
                            <a th:href="@{/admin/categoryIofo/}+${category.getId()}"><button class="btn btn-primary" type="button">修改</button></a>
                            <a th:href="@{/admin/categoryDelete/}+${category.getId()}"><button class="btn btn-danger" type="button">删除</button></a>
                        </td>
                    </tr>
                    </tbody>
                </table>
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