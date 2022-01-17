<?php
require_once __DIR__ .'/scripts/get-departments.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>test</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Mail</th>
					<th>Website</th>
				</tr>
			</thead>

			<tbody>
				<?php
				foreach ($departments as  $department) : ?> 
					<tr>
						<td><?php echo $department['id']?></td>
						<td><?php echo $department['name']?></td>
						<td><?php echo $department['email']?></td>
						<td><?php echo $department['website']?></td>
					</tr>	
				<?php endforeach;
				?>	
			</tbody>	
		</table>

	</div>
</body>
</html>