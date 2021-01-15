<?php
require_once("dataBase.php");
require_once("ajax.php");

$dbConnection   = new Connection();
$perPage        = new sbpagination();

if(strlen($_GET['searchText']) > 2) {
    $sqlquery   = " SELECT course.course_id, course.course_name, course.course_description, department.department_name, professor.professor_name
                    FROM ((course
                    INNER JOIN department ON
                    course.department_id = department.department_id)
                    INNER JOIN professor ON
                    course.professor_id = professor.professor_id)
                    WHERE course.course_name LIKE '%".$_GET['searchText']."%'
                    OR course.course_description LIKE '%".$_GET['searchText']."%'
                    OR professor.professor_name LIKE '%".$_GET['searchText']."%'
                    OR department.department_name LIKE '%".$_GET['searchText']."%'
                    ORDER BY course.course_id ";
}else {
    $sqlquery   = " SELECT course.course_id, course.course_name, course.course_description, department.department_name, professor.professor_name
                    FROM ((course
                    INNER JOIN department ON
                    course.department_id = department.department_id)
                    INNER JOIN professor ON
                    course.professor_id = professor.professor_id)
                    ORDER BY course.course_id ";
}

$page = 1;
if(!empty($_GET["page"])) {
$page = $_GET["page"];
}

$start = ($page - 1) * $perPage->perpage;
if($start < 0) $start = 0;

$query   =  $sqlquery . " limit " . $start . "," . $perPage->perpage;
$getData = $dbConnection->runQuery($query);

$rowcount      = $dbConnection->numRows($sqlquery);
$showpagination = $perPage->getAllPageLinks($rowcount);

$output = '';
$output .= '<table class="table">';
    $output .= '<tbody>';
    $output .= "
        <tr>
            <th width='15%'>
                Course ID
            </th>
            <th width='20%'>
                Course
            </th>
            <th width='35%'>
                Description
            </th>
            <th width='15%'>
                Department
            </th>
            <th width='15%'>
                Professor
            </th>
        </tr>";
    if(!empty($getData)){
        foreach ($getData as $data) {
            $output .= "
        <tr>
            <td>
                ".$data["course_id"]."
            </td>
            <td>
                ".$data["course_name"]."
            </td>
            <td>
                ".$data["course_description"]."
            </td>
            <td>
                ".$data["department_name"]."
            </td>
            <td>
                ".$data["professor_name"]."
            </td>
        <tr>";
        }
    }
    $output .= '</tbody>';
$output .= '</table>';

if(!empty($showpagination))
	$output .= '<ul class="pagination">'.$showpagination.'</ul>';
echo $output;
die();
?>
