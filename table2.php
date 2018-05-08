<?php

$con=mysqli_connect("localhost","root","","team2");
$D=$_POST["f2"];
$sql="SELECT * FROM visitor where date='$D' ";

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
           echo "<input type=button value=print  onclick='print()'/><br><br>";
           
           echo "<TR> <th>NAME</th> <TH>number</TH> <TH>City</TH> <TH>address</TH><th>Time</th><th>Guard_ID</TH></TR>";
           while($rows=mysqli_fetch_array($result))
           {
           	     $name=$rows["name"];
           	     $num=$rows["number"];
           	     $city=$rows["city"];
           	     $address=$rows["address"];
                 $file=$rows["file"];
                 $time=$rows["date"];
                 $gid=$rows["gid"];

           	     echo "<tr> <td> <img src='photo/$file' style='width:200px;height:200px'> </td>
           	            <td>$num</td>
           	            <td>$city</td>
           	            <td>$address</td>
                         <td>$time</td>
                          <td>$gid</td>

                         </tr>



                      ";


           }

        ?>

	</table>
</CENTER>

</body>
</html>