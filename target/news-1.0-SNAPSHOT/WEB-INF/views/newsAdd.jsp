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
        <div th:insert="~{commonsAdmin::#sideBar(activeUri='newsInput')}"></div>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <form style="padding-top: 50px; padding-left: 50px;" th:action="@{/admin/newsAdd}">
                <strong class="mc-ui-flex-center" style="padding-bottom: 20px;">发布新闻</strong><div class="row mt-sm-2">
                <div class="col-md-1 col-lg-1 col-xl-1 col-sm-12 text-left align-self-md-center">
                    标题
                </div>
                <div class="col-md-11 col-lg-11 col-xl-11 col-sm-12" style="padding-right: 200px;">
                    <input class="form-control" type="text" aria-describedby="passwordHelp" placeholder="请输入标题" name="title" required="required"/>
                </div>
            </div>
                <div class="row mt-sm-2">
                    <div class="col-md-1 col-lg-1 col-xl-1 col-sm-12 text-left align-self-md-center">
                        类型
                    </div>
                    <div class="col-md-11 col-lg-11 col-xl-11 col-sm-12" style="padding-right: 200px;">
                        <select class="form-control" name="cid">
                            <option th:text="--请选择类型--"></option>
                            <option th:each="category:${categorys}" th:text="${category.getCategoryName()}" th:value="${category.getId()}" >2</option>
                        </select>
                    </div>
                </div>
                <div class="row mt-sm-2">
                    <div class="col-md-1 col-lg-1 col-xl-1 col-sm-12 text-left align-self-md-center">
                        内容
                    </div>
                    <div class="col-md-11 col-lg-11 col-xl-11 col-sm-12" style="padding-right: 200px;">
                        <textarea class="form-control" rows="3" name="content" placeholder="请输入内容" required="required"></textarea>
                    </div>
                </div>
                <div class="row mt-sm-2">
                    <div class="col-md-1 col-lg-1 col-xl-1 col-sm-12 text-left align-self-md-center">
                        来源
                    </div>
                    <div class="col-md-11 col-lg-11 col-xl-11 col-sm-12" style="padding-right: 200px;">
                        <input class="form-control" type="text" aria-describedby="passwordHelp" placeholder="请输入来源" name="source" required="required"/>
                    </div>
                </div>
                <div class="col-md-11 col-lg-11 col-xl-11 col-sm-12 text-left" style="padding-left: 110px; padding-top: 30px;">
                    <button class="btn btn-primary" type="submit">添加</button>
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