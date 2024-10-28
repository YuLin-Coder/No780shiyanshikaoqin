<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑实验室预约</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">实验室预约管理</li>
                        <li class="breadcrumb-item active">编辑实验室预约</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">实验室预约信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6">
                                        <label>班级</label>
                                        <div>
                                            <select id="banjiSelect" name="banjiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>班级名称</label>
                                        <input id="banjiName" name="banjiName" class="form-control"
                                               placeholder="班级名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>班级人数</label>
                                        <input id="banjiNumber" name="banjiNumber" class="form-control"
                                               placeholder="班级人数" readonly>
                                    </div>
                                    <div class="form-group col-md-6" style="display: none">
                                        <label>实验室</label>
                                        <div>
                                            <select id="shiyanshiSelect" name="shiyanshiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>实验室名称</label>
                                        <input id="shiyanshiName" name="shiyanshiName" class="form-control"
                                               placeholder="实验室名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>实验室位置</label>
                                        <input id="shiyanshiWeizhi" name="shiyanshiWeizhi" class="form-control"
                                               placeholder="实验室位置" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>实验室图片</label>
                                        <img id="shiyanshiPhotoImg" src="" width="100" height="100">
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="shiyanshiId" name="shiyanshiId" type="hidden">
                                <input id="jiaoshiId" name="jiaoshiId" type="hidden">
                                <input id="banjiId" name="banjiId" type="hidden">
                                    <div class="form-group col-md-6">
                                        <label>预约时间</label>
                                        <input id="yuyueTime-input" name="yuyueTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>所上课程</label>
                                        <input id="yuyueName" name="yuyueName" class="form-control"
                                               placeholder="所上课程">
                                    </div>
                                    <div class="form-group col-md-6" style="display: none">
                                        <label>是否同意</label>
                                        <input id="yuyueTypesSelect" type="hidden" value="0" name="yuyueTypes" class="form-control">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>应到人数</label>
                                        <input id="yuyueYingdao" name="yuyueYingdao"  class="form-control"
                                               onchange="yuyueYingdaoChickValue(this)"  placeholder="应到人数">
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>已签到人数</label>
                                        <input id="yuyueYidao" name="yuyueYidao" value="0"  readonly class="form-control"
                                               onchange="yuyueYidaoChickValue(this)"  placeholder="已签到人数">
                                    </div>

                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
</script><script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "yuyue";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
        <!-- 级联表的下拉框数组 -->
    var banjiOptions = [];
    var shiyanshiOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
           if($("#shiyanshiId") !=null){
               var shiyanshiId = $("#shiyanshiId").val();
               if(shiyanshiId == null || shiyanshiId =='' || shiyanshiId == 'null'){
                   alert("预约实验室不能为空");
                   return;
               }
           }
           if($("#banjiId") !=null){
               var banjiId = $("#banjiId").val();
               if(banjiId == null || banjiId =='' || banjiId == 'null'){
                   alert("班级不能为空");
                   return;
               }
           }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';
            }
            httpJson("yuyue/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addyuyue');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询级联表的所有列表 -->
        function banjiSelect() {
            //填充下拉框选项
            http("banji/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    banjiOptions = res.data.list;
                }
            });
        }

        function banjiSelectOne(id) {
            http("banji/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                banjiShowImg();
                banjiShowVideo();
                banjiDataBind();
            }
        });
        }

        function shiyanshiSelect() {
            //填充下拉框选项
            http("shiyanshi/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    shiyanshiOptions = res.data.list;
                }
            });
        }

        function shiyanshiSelectOne(id) {
            http("shiyanshi/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                shiyanshiShowImg();
                shiyanshiShowVideo();
                shiyanshiDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->

        function initializationbanjiSelect() {
            var banjiSelect = document.getElementById('banjiSelect');
            if(banjiSelect != null && banjiOptions != null  && banjiOptions.length > 0 ) {
                for (var i = 0; i < banjiOptions.length; i++) {
                        banjiSelect.add(new Option(banjiOptions[i].banjiName, banjiOptions[i].id));
                }

                $("#banjiSelect").change(function(e) {
                        banjiSelectOne(e.target.value);
                });
            }

        }

        function initializationshiyanshiSelect() {
                shiyanshiSelectOne(window.sessionStorage.getItem("qqqq"));

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        <!--  级联表的下拉框回显  -->
            var banjiSelect = document.getElementById("banjiSelect");
            if(banjiSelect != null && banjiOptions != null  && banjiOptions.length > 0 ) {
                for (var i = 0; i < banjiOptions.length; i++) {
                    if (banjiOptions[i].id == ruleForm.banjiId) {//下拉框value对比,如果一致就赋值汉字
                        banjiSelect.options[i+1].selected = true;
                        $("#banjiSelect" ).selectpicker('refresh');
                    }
                }
            }
            var shiyanshiSelect = document.getElementById("shiyanshiSelect");
            if(shiyanshiSelect != null && shiyanshiOptions != null  && shiyanshiOptions.length > 0 ) {
                for (var i = 0; i < shiyanshiOptions.length; i++) {
                    if (shiyanshiOptions[i].id == ruleForm.shiyanshiId) {//下拉框value对比,如果一致就赋值汉字
                        shiyanshiSelect.options[i+1].selected = true;
                        $("#shiyanshiSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->
        function yuyueYingdaoChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }
        function yuyueYidaoChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addyuyue');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                shiyanshiId: "required",
                banjiId: "required",
                yuyueTime: "required",
                yuyueName: "required",
                yuyueYingdao: "required",
                yuyueYidao: "required",
            },
            messages: {
                shiyanshiId: "预约实验室不能为空",
                banjiId: "班级不能为空",
                yuyueTime: "预约时间不能为空",
                yuyueName: "所上课程不能为空",
                yuyueYingdao: "应到人数不能为空",
                yuyueYidao: "已签到人数不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addyuyue = window.sessionStorage.getItem("addyuyue");
        if (addyuyue != null && addyuyue != "" && addyuyue != "null") {
            window.sessionStorage.removeItem('addyuyue');
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("yuyue/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#yuyueTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        banjiDataBind();
        shiyanshiDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#shiyanshiId").val(ruleForm.shiyanshiId);
        $("#jiaoshiId").val(ruleForm.jiaoshiId);
        $("#banjiId").val(ruleForm.banjiId);
        $("#yuyueTime-input").val(ruleForm.yuyueTime);
        $("#yuyueName").val(ruleForm.yuyueName);
        $("#yuyueYingdao").val(ruleForm.yuyueYingdao);
        $("#yuyueYidao").val(ruleForm.yuyueYidao);

    }
    <!--  级联表的数据回显  -->
    function banjiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#banjiId").val(ruleForm.id);

        $("#banjiName").val(ruleForm.banjiName);
        $("#banjiNumber").val(ruleForm.banjiNumber);
        $("#yuyueYingdao").val(ruleForm.banjiNumber);
    }


    function shiyanshiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#shiyanshiId").val(ruleForm.id);

        $("#shiyanshiName").val(ruleForm.shiyanshiName);
        $("#shiyanshiWeizhi").val(ruleForm.shiyanshiWeizhi);
        $("#shiyanshiContent").val(ruleForm.shiyanshiContent);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        banjiShowImg();
        shiyanshiShowImg();
    }


    <!--  级联表的图片  -->

    function banjiShowImg() {
    }




    function shiyanshiShowImg() {
        $("#shiyanshiPhotoImg").attr("src",ruleForm.shiyanshiPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        banjiShowVideo();
        shiyanshiShowVideo();
    }


    <!--  级联表的视频  -->

    function banjiShowVideo() {
    }


    function shiyanshiShowVideo() {
        $("#shiyanshiPhotoV").attr("src",ruleForm.shiyanshiPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            banjiSelect();
            shiyanshiSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            <!--  初始化级联表的下拉框  -->
            initializationbanjiSelect();
            initializationshiyanshiSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') != '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>