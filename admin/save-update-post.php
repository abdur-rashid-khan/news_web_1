<!-- update -->
<?php 
   include "config.php";
   if(empty($_FILES['new_image'])){
      $file_name=$_POST['old_image'];
   }else{
      $error=array();
      $file_name=$_FILES['new_image']['name'];
      $file_size=$_FILES['new_image']['size'];
      $file_tmp = $_FILES['new_image']['tmp_name'];
      $file_type=$_FILES['new_image']['type'];
      $file_ext=explode('.',$file_name);
      $check_ext=strtolower(end($file_ext));
      $ext=array('jpeg','jpg','png');
      if(in_array($check_ext,$ext)){
         // > 2097152
         if($file_size ){
            $uploade = "upload/".$file_name;
            move_uploaded_file($file_tmp,$uploade);
         }else{
            ?>
               <script>
                  alert('This file size is small');
               </script>
            <?php 
         }
      }else{
         ?>
         <script>
            alert('This file is not allow ');
         </script>
         <?php 
      }
   } 
   
   $sql = "UPDATE `post` SET `title`='{$_POST["post_title"]}',`description`='{$_POST["postdesc"]}',`category`='{$_POST["category"]}',`post_img`='{$file_name}' WHERE `post_id`={$_POST["post_id"]}";
   $query=mysqli_query($con,$sql);
   if($query){
      ?>
         <script>
            alert('updating successfully');
            location.replace('post.php');
         </script>
      <?php 
   }else{
      echo$sql = "UPDATE `post` SET `title`='{$_POST["post_title"]}',`description`='{$_POST["postdesc"]}',`category`={$_POST["category"]},`post_img`='{$file_name}'
      WHERE `post_id`={$_POST["post_id"]};";
   $query=mysqli_query($con,$sql);
   }
?>