<!DOCTYPE html>
<html>

<head>
    <base href="{{asset('public/layout/backend')}}/">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title') | BiuBiu shop</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/datepicker3.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
    <link href="css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="fonts/fontawesome/css/all.css" rel="stylesheet">
    <script type="text/javascript" src="../../editor/ckeditor/ckeditor.js"></script>
    <script src="js/lumino.glyphs.js"></script>
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="{{asset('admin')}}">BiuBiu Admin</a>
                <ul class="user-menu">
                    <li class="dropdown pull-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <svg class="glyph stroked male-user">
                                <use xlink:href="#stroked-male-user"></use>
                            </svg>{{Auth::user()->name}}<span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="{{asset('logout')}}"><svg class="glyph stroked cancel">
                                        <use xlink:href="#stroked-cancel"></use>
                                    </svg> Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div><!-- /.container-fluid -->
    </nav>

    <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
        <ul class="nav menu">
            <li role="presentation" class="divider"></li>
            <li class="active"><a href="{{asset('admin')}}"><svg class="glyph stroked dashboard-dial">
                        <use xlink:href="#stroked-dashboard-dial" />
                    </svg> Trang chủ</a></li>
            <li><a href="{{asset('admin/product')}}"><svg class="glyph stroked calendar">
                        <use xlink:href="#stroked-calendar" />
                    </svg> Sản phẩm</a></li>
            <li><a href="{{asset('admin/category')}}"><svg class="glyph stroked line-graph">
                        <use xlink:href="#stroked-line-graph" />
                    </svg> Danh mục</a></li>
            <li><a href="{{asset('admin/user')}}"><svg class="glyph stroked male-user">
							<use xlink:href="#stroked-male-user"></use>
						</svg>Người dùng</a></li>
            <li><a href="{{asset('admin/order')}}"><svg class="glyph stroked bag">
                        <use xlink:href="#stroked-bag" />
                    </svg>Đơn hàng</a></li>
            <li role="presentation" class="divider"></li>
        </ul>

    </div>
    <!--/.sidebar-->
    <!--Main-->
    @yield('main')

    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/chart.min.js"></script>
    <script src="js/chart-data.js"></script>
    <script src="js/easypiechart.js"></script>
    <script src="js/easypiechart-data.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script>
        $('#calendar').datepicker({});

        ! function($) {
            $(document).on("click", "ul.nav li.parent > a > span.icon", function() {
                $(this).find('em:first').toggleClass("glyphicon-minus");
            });
            $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
        }(window.jQuery);

        $(window).on('resize', function() {
            if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
        })
        $(window).on('resize', function() {
            if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
        })

        // Chang Image add product
        function changeImg(input) {
            //Nếu như tồn thuộc tính file, đồng nghĩa người dùng đã chọn file mới
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                //Sự kiện file đã được load vào website
                reader.onload = function(e) {
                    //Thay đổi đường dẫn ảnh
                    $('#avatar').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        $(document).ready(function() {
            $('#avatar').click(function() {
                $('#img').click();
            });
        });

        $('#my-table').DataTable({
            "pageLength": 5,
            "lengthMenu": [5, 10, 15, 20, 25]
        });

        $(document).ready(function(){
            $("#changePassword").change(function(){
                if($(this).is(":checked")){
                    $(".password").removeAttr("disabled");
                }else{
                    $(".password").attr("disabled","");
                }
            });
        });
    </script>
</body>

</html>