<?php 
$id = $_POST['id'];
$pass = $_POST['pass'];
$name = $_POST['name'];
$email1 = $_POST["email1"];
$email2 = $_POST["email2"];
$email = $email1."@".$email2;
include '../inc_con/db_connect.php';
$sql = "update members set pass='$pass', name='$name', email='$email'";
$sql .= " where id = '$id'";
mysqli_query($con,$sql);
mysqli_close($con);
echo "
<script>
    location.href='index.php';
</script>
";
?>