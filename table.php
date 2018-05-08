<?php

$con=mysqli_connect("localhost","root","","team2");
$D=$_POST["f1"];
$sql="SELECT * FROM visitor where city='$D'";

$result=mysqli_query($con,$sql);

?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<CENTER>
	<table border>
		
        <?php
           
           echo "<TR> <th>NAME</th> <TH>number</TH> <TH>City</TH> <TH>address</TH><th>Time</th><th>Gaurd_ID</th></tr>";
           while($rows=mysqli_fetch_array($result))
           {
           	     $name=$rows["name"];
           	     $id=$rows["number"];
           	     $course=$rows["city"];
           	     $dept=$rows["address"];
                 $file=$rows["file"];
                 $time=$rows["date"];
                 $gid=$rows["gid"];

           	     echo " <tr><td> <img src='photo/$file' style='width:200px;height:200px'> </td>
           	            <td>$id</td>
           	            <td>$course</td>
           	            <td>$dept</td>
                         <td>$time</td>
                         <td>$gid</td>
                        </tr>

                      ";
            }

            echo "<input type=button value=print  onclick='print()'/><br><br>";
        ?>

	</table>
</CENTER>

</body>
</html>