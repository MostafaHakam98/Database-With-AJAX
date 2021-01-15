<!DOCTYPE html>
<html lang="en">
<head>
    <title>Database Project AJAX</title>
    <meta charset="utf-8">
    <meta name = "viewport" content="width=device-width, initial-scale=1">
    <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type = "text/javascript">
        $(document).ready(function(){
            $(document).on("click", ".page", function(){
                $.ajax({
                    url: "getresult.php",
                    type: "GET",
                    data: {
                        page: $(this).attr("data-page"),
                        searchText: $("#search_text").val()
                    },
                    beforeSend: function () {
                        $("#overlay").show();
                    },
                        success: function(data) {
                            $("#pagination-result").html(data);
                            setInterval(function () {
                                $("#overlay").hide();
                            },
                                500);
                        },         
                   });
            });
        });
    </script>
    <style type="text/css">
        #overlay {background-color: rgba(0, 0, 0, 0.6);z-index: 999;position: absolute;left: 0;top: 0;width: 100%;height: 100%;display: none;}
        #overlay div {position:absolute;left:50%;top:50%;margin-top:-32px;margin-left:-32px;}

        h1 {text-align: center;}
        h3 {text-align: center;}
        h5 {text-align: center;}
    </style>
</head>
<body>
    <?php
    require_once("dataBase.php");
    require_once("ajax.php");
    $dbConnection  = new Connection();
    $perPage       = new sbpagination();
    $sqlquery      = "  SELECT course.course_id, course.course_name, course.course_description, department.department_name, professor.professor_name
                        FROM ((course
                        INNER JOIN department ON
                        course.department_id = department.department_id)
                        INNER JOIN professor ON
                        course.professor_id = professor.professor_id)
                        ORDER BY course.course_id ";
    $query         = $sqlquery."limit 0," . $perPage->perpage;
    $getData       = $dbConnection->runQuery($query);
    $rowcount      = $dbConnection->numRows($sqlquery);
    $showpagination = $perPage->getAllPageLinks($rowcount);
    ?>
    <div id="overlay">
        <div>
            <img src="extra/loading.gif" width="100px" height="100px" />
        </div>
    </div>
    <div class="container">
        <h1>Database</h1>
        <h3>Search and pagination using AJAX</h3>
        <br/>
        <div class="form-group">  
            <form class="input" method="POST" action="getresult.php">
                <input type="text" name="search_text" id="search_text" placeholder="Search for course by Course, Description, Department, or Professor" class="form-control" />
            </form>
		</div>
        <br/>
        <div class="col-md-12">
            <div id="pagination-result">
                <table class="table">
                    <tbody>
                        <tr>
                            <th width='15%'>Course ID</th>
                            <th width='20%'>Course</th>
                            <th width='35%'>Description</th>
                            <th width='15%'>Department</th>
                            <th width='15%'>Professor</th>
                        </tr>
                        <?php
                        foreach ($getData as $data)
                            echo "<tr><td>".$data["course_id"]."</td><td>".$data["course_name"]."</td><td>".$data["course_description"]."</td><td>".$data["department_name"]."</td><td>".$data["professor_name"]."</td><tr>";
                        ?>
                    </tbody>
                </table>
                <?php
                if(!empty($showpagination)) {
                ?>
                    <ul class="pagination">
                        <?php 
                        echo $showpagination;
                        ?>
                    </ul>
                <?php
                }
                ?>


            </div>
        </div>
    </div>
    <br />

    <h5>Project by:     Mostafa Hakam Mohamed</h5>
    <h5>ID:             5525</h5>
</body>
</html>

<script>
    var x = document.getElementById("search_text");
    var flag = 0;

    x.oninput = function() {
        var text = x.value;

        if (text.length > 2) {
            flag = 1;
            $.ajax({
                url: "getresult.php",
                type: "GET",
                data: {
                    searchText: $("#search_text").val()
                },
                success: function (data) {
                    $("#pagination-result").html(data);
                    setInterval(function () {
                        $("#overlay").hide();
                    },
                        500);
                },
            });
        }
        else if (flag == 1) {
            flag = 0;
            $.ajax({
                url: "getresult.php",
                type: "GET",
                data: {
                    page: $(this).attr("data-page"),
                    searchText: $("#search_text").val()
                },
                beforeSend: function () {
                    $("#overlay").show();
                },
                    success: function(data) {
                        $("#pagination-result").html(data);
                        setInterval(function () {
                            $("#overlay").hide();
                        },
                            500);
                    },
            });
        }
    };
</script>

