<?php include "header.php";?>
<?php include "config.php"; ?> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Update Post</title>
</head>
<body>
<div id="admin-content">
<div class="container">
<div class="row">
	<div class="col-md-12">
		<h1 class="admin-heading">Update Post</h1>
	</div>
	<div class="col-md-offset-3 col-md-6">
		<!-- Form for show edit-->
		<!-- datafatech from databash -->
		<?php 
		$id=$_GET['id'];
		$selecte="SELECT * FROM `post` WHERE `post_id`='$id'";
		$query=mysqli_query($con,$selecte);
		$numrows=mysqli_num_rows($query);
		if($numrows > 0){
			while($datafetch=mysqli_fetch_assoc($query)){
				$post_id=$datafetch['post_id'];
				$title=$datafetch['title'];
				$description=$datafetch['description'];
				$category=$datafetch['category'];
				$post_img=$datafetch['post_img'];
		?>
		<form action="save-update-post.php" method="POST" enctype="multipart/form-data" autocomplete="on">
			<div class="form-group">
					<label for="exampleInputid">ID</label>
					<input  type="hidden" name="post_id"  class="form-control" value="<?php echo $post_id ?>" placeholder="">
					<input disabled  type="number" name=""  class="form-control" value="<?php echo $post_id ?>" placeholder="">
			</div>
			<div class="form-group">
					<label for="exampleInputTile">Title</label>
					<input type="text" name="post_title"  class="form-control" id="exampleInputUsername" value="<?php echo $title ?>">
			</div>
			<div class="form-group">
					<label for="exampleInputPassword1"> Description</label>
					<textarea name="postdesc" class="form-control text-left"  required rows="5"><?php echo $description ?>
					</textarea>
			</div>
			<div class="form-group">
					<label for="exampleInputCategory">Category</label>
					<select  class="form-control" name="category">
						<!-- select option fetch data -->
						<?php 
							$select="SELECT * FROM `category`";
							$query=mysqli_query($con,$select);
							if(mysqli_num_rows($query)){
								while($datafetch=mysqli_fetch_assoc($query)){
								$_SESSION['c_id']=$datafetch['id'];
								$category_name=$datafetch['category_name'];
								$post=$datafetch['post'];
								if($category==$category_name){
									$selected='selected';
								}else{
									$selected='';
								}
						?>
					<option <?php echo $selected ?> value="<?php echo $category_name ?>"><?php echo $category_name ?></option>
					<?php 
							}
						}

					?>
					</select>
			</div>
			<div class="form-group">
					<label for="">Post image</label>
					<input type="file" name="new_image" class='form-control' required>
					<!-- <img style="margin-top:15px;"  src="upload/<?php echo $post_img ?>" width="50%" height="180px"> -->
					<!-- <input type="hidden" name="old_image" value="<?php echo $post_img ?>"> -->
			</div>
			<input type="submit" name="update" class="btn btn-primary" value="Update" />
			
		</form>
		<?php
			}
		} 
			?>
		<!-- Form End -->
	</div>
	</div>
</div>
</div>
</body>
</html>
<?php include "footer.php"; ?>
