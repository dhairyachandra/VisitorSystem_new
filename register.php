<?php

	$servername = "localhost";
    $username = "root";
    $password = "";
    $db = "team2";

    // Create connection
    $con = mysqli_connect($servername, $username, $password,$db);

    // Check connection
    if (!$con){
      die("Connection failed: " . mysqli_connect_error());
    }
    session_start();
    if(isset($_SESSION["uid"])){
        $id=$_SESSION["uid"];
        $sql="select * from admin where id=$id LIMIT 1";
        $run_query=mysqli_query($con,$sql);
        while($row=mysqli_fetch_array($run_query)){ 
            $f=$row["first"];
   	        $s=$row["second"];
        }
    }
    else
 	    header('Location:index.php');

    date_default_timezone_set("Asia/Kolkata");

 ?>


<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/rstyle.css">
</head>
<body>

<ul style="position:relative; top:0px;">
  <li><a href="#" title="logout">Guard : </a></li>
  <li><a href="action.php" title="visitor info" target="_blank"><?php echo $f." ".$s; ?></a></li>
  <li><a>Date : <?php echo date("y-m-d"); ?></a></li>
    <li style="margin-left: 65%;"><a href="destroy.php" title="logout">Logout</a></li>
     
    </ul>




<form action=""  method="POST" enctype="multipart/form-data">
  <center><div class="container">
   <img width="50%" height="50%" src="images/gl.png">
    <h3>VISITOR PASS ENTRY</h3>
    
    <hr>
    
    <table>
<tbody>
<tr>
<td style="width: 10%;">Student Name: </td>
<td style="width: 70%;"><input type="text" placeholder="Full name of Student" name="name" required></td>
</tr>
<tr>
<td style="width: 10%;">Father's Name: </td>
<td style="width: 70%;"><input type="text" placeholder="Fathers name" name="fname" required></td>
</tr>
<tr>
<td style="width: 30%;">Mobile No: </td>
<td style="width: 70%;"><input type="text" placeholder="Enter 10 Digit Mobile Number" name="num" pattern="[6789][0-9]{9}" required></td>
</tr>
<tr>
<td style="width: 10%;">City: </td>
<td style="width: 70%;"><input type="text" placeholder="Enter City" name="city" required></td>
</tr>
<tr>
<td style="width: 10%;">Address: </td>
<td style="width: 70%;"><input type="text" placeholder="Enter Address" name="address" required></td>
</tr>
<tr>
<td style="width: 10%;">Purpose: </td>
<td style="width: 70%;"><input type="text" placeholder="Purpose of visit" name="purpose" required></td>
</tr>
<tr>
<td style="width: 10%;">Image: </td>
<td style="width: 70%;"><input type="file" name="upfile" accept="images/*" required></td>
</tr>
<tr>
<td style="width: 10%;">Gates: </td>
<td style="width: 70%;"><input type="radio" name="gate" value="Gate 1" required checked> Gate 1 <input type="radio" name="gate" value="Gate 2" required>Gate 2</td>
</tr>


</tbody>
</table>
    
    <?php
       if(!empty($message)){echo $message;} ?>
       	
    
    <br>
    

    <div class="clearfix">
      <button type="RESET" class="cancelbtn">Reset</button>
        <a href='generate.php?f=$file_name' target=_blank><button type="submit" class="signupbtn" name="submit">Submit</button></a>
    </div>
  </div>
  <br>
  <br>
</form>
</center>
<div class="cam">
   <h3>Web Cam Here...</h3>
    
</div>

</body>
</html>

<?php
    if(isset($_POST["submit"])){
        $name=$_POST["name"];
        $fname=$_POST["fname"];
        $mobile=$_POST["num"];
        $city=$_POST["city"];
        $address=$_POST["address"];
        $date=date("y-m-d");
        $time=date("h:i:s",time());
        $fn=$_FILES['upfile'] ['name'];
        $purpose=$_POST["purpose"];
        $gate=$_POST["gate"];

        $filebasename=basename($_FILES['upfile'] ['name']);
        $ext=strtolower(substr($filebasename,strrpos($filebasename,'.')+1));

        if(($ext=="jpg" || $ext=="jpeg" || $ext=="JPG") && ( $_FILES["upfile"]["type"]=="image/jpg" || $_FILES["upfile"]["type"]=="image/jpeg")){
             $desired_dir="photo/";
             $file_name=$_FILES['upfile'] ['name'];

             if(file_exists($desired_dir . $file_name)){
                echo $file_name." already exist.";
             }
             else{
                 $sql="INSERT INTO `visitor`(number,name,address,city,gid,file,purpose,gate,fname) VALUES                      ('$mobile','$name','$address','$city','$id','$file_name','$purpose','$gate','$fname')";
                 $result=mysqli_query($con,$sql);
                 if($result){
                     move_uploaded_file($_FILES["upfile"]["tmp_name"],$desired_dir.$file_name);
                     echo "Data is SUCESSFULLY UPLOAD.";
                     echo "<a href='generate.php?f=$file_name' target=_blank>GENERATE PASS</A>";
                 }
                 else
                     echo " error";
            }
        }
        else{
            echo "INSERTION OF INFORMATION IS FAILED!!";
        }
    }

?>