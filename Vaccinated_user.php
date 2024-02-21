<?php
include('includes/checklogin.php');
check_login();
?>

<!DOCTYPE html>
<html lang="en">
<?php @include("includes/head.php");?>
<body>
<!--  Author Name: Nikhil Bhalerao From India 
 for any PHP, Codeignitor, Laravel OR Python work contact me at +919423979339 OR ndbhalerao91@gmail.com  
 Visit website : www.nikhilbhalerao.com -->
  <div class="container-scroller">
    
    <?php @include("includes/header.php");?>
    
    <div class="container-fluid page-body-wrapper">
      
      
      <div class="main-panel">
        <div class="content-wrapper">

          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="modal-header">
                  <h5 class="modal-title" style="float: left;"></h5>
                   <div class="card-tools" style="float: right;">
                    
                  
                  </div>    
                </div>

                
                
           
            
            <div id="newbid_action" class="modal fade">
              <div class="modal-dialog ">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Take Action</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body" id="info_update2">
                   <?php @include("vaccinated_action.php");?>
                 </div>
                 <div class="modal-footer ">
                  
                </div>
                
              </div>
              
            </div>
            
          </div>
          
          <div class="table-responsive p-3">
            <table class="table align-items-center table-flush table-hover" id="dataTableHover">
              <thead>
                <tr>
                 <th class="text-center"></th>
                 <th>Booking ID</th>
                 <th class="d-none d-sm-table-cell">Name</th>
                 <th class="d-none d-sm-table-cell">Mobile Number</th>
                 <th class="d-none d-sm-table-cell">Email</th>
                 <th class="d-none d-sm-table-cell">Booking Date</th>
				 <th class="d-none d-sm-table-cell">Vaccine Type</th>
				 <th class="d-none d-sm-table-cell">Vaccine Center</th>
                 <th class="d-none d-sm-table-cell">Final</th>
				 
                 <th class=" Text-center" style="width: 15%;">Action</th>
               </tr>
             </thead>
             <!--  Author Name: Nikhil Bhalerao From India 
 for any PHP, Codeignitor, Laravel OR Python work contact me at +919423979339 OR ndbhalerao91@gmail.com  
 Visit website : www.nikhilbhalerao.com -->
<tbody>
               <?php
               $sql="SELECT * from tblbooking where Status is null";
               $query = $dbh -> prepare($sql);
               $query->execute();
               $results=$query->fetchAll(PDO::FETCH_OBJ);

               $cnt=1;
               if($query->rowCount() > 0)
               {
                foreach($results as $row)
                  {               ?>
                    <tr>
                      <td class="text-center"><?php echo htmlentities($cnt);?></td>
                      <td class="font-w600"><?php  echo htmlentities($row->BookingID);?></td>
                      <td class="font-w600"><?php  echo htmlentities($row->Name);?></td>
                      <td class="font-w600">0<?php  echo htmlentities($row->MobileNumber);?></td>
                      <td class="font-w600"><?php  echo htmlentities($row->Email);?></td>
					  <td class="font-w600">
                        <span class="badge badge-info"><?php  echo htmlentities($row->BookingDate);?></span>
                      </td>
					  <td class="font-w600"><?php  echo htmlentities($row->EventType);?></td>
					  <td class="font-w600"><?php  echo htmlentities($row->VaccineCenter);?></td>
                      
                      <?php if($row->Final=="")
                      { 
                        ?>
                        <td class="font-w600"><?php echo "Not Updated Yet"; ?></td>
                        <?php 
                      } else { ?>
                        <td class="d-none d-sm-table-cell">
                          <span ><?php  echo htmlentities($row->Final);?></span>
                        </td>
                        <?php 
                      } ?> 
                      <td class=" text-center">
                       
                        <a href="#"  class="edit_data2 btn btn-purple rounded" id="<?php echo  ($row->ID); ?>" ><i class="mdi mdi-pencil-box-outline " aria-hidden="true" title="Take action"></i></a>
                      </td>
                    </tr>
                    <?php
                    $cnt=$cnt+1;
                  }
                } ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  
  <?php @include("includes/footer.php");?>
  
</div>

</div>

</div>

<?php @include("includes/foot.php");?>
<!--  Author Name: Nikhil Bhalerao From India 
 for any PHP, Codeignitor, Laravel OR Python work contact me at +919423979339 OR ndbhalerao91@gmail.com  
 Visit website : www.nikhilbhalerao.com -->

<script type="text/javascript">
  $(document).ready(function(){
    $(document).on('click','.edit_data4',function(){
      var edit_id4=$(this).attr('id');
      $.ajax({
        url:"view_newbookings.php",
        type:"post",
        data:{edit_id4:edit_id4},
        success:function(data){
          $("#info_update4").html(data);
          $("#editData4").modal('show');
        }
      });
    });
  });
</script>
<script type="text/javascript">
  $(document).ready(function(){
    $(document).on('click','.edit_data2',function(){
      var edit_id2=$(this).attr('id');
      $.ajax({
        url:"vaccinated_action.php",
        type:"post",
        data:{edit_id2:edit_id2},
        success:function(data){
          $("#info_update2").html(data);
          $("#newbid_action").modal('show');
        }
      });
    });
  });
</script>
</body>
<!--  Author Name: Nikhil Bhalerao From India 
 for any PHP, Codeignitor, Laravel OR Python work contact me at +919423979339 OR ndbhalerao91@gmail.com  
 Visit website : www.nikhilbhalerao.com -->
</html>