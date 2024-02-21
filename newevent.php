<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['submit']))
{
   $vcenter=$_POST['vcenter'];
  $sql="insert into tblvcenter(VaccineCenter)values(:vcenter)";
  $query=$dbh->prepare($sql);
   $query->bindParam(':vcenter',$vcenter,PDO::PARAM_STR);
  $query->execute();
  $LastInsertId=$dbh->lastInsertId();
  if ($LastInsertId>0) {
    echo '<script>alert("Vaccine Center has been added.")</script>';
  }
  else
  {
   echo '<script>alert("Something Went Wrong. Please try again")</script>';
 }
}
?>
<div class="card-body">
  <h4 class="card-title">Add Vaccine Center</h4>
  <form class="forms-sample" method="post">
    <div class="form-group">
      <label for="exampleInputName1">Vaccine Center</label>
      <input type="text" name="vcenter" class="form-control" id="vcenter" placeholder="Vaccine Center" required>
    </div>
    <button type="submit" name="submit" class="btn btn-primary btn-fw mr-2">Submit</button>
  </form>
</div>