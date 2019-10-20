<?php 
	// uvodimo promenjivu errors
	$errors = "";

	// povezujemo se na bazu
	$db = mysqli_connect("localhost", "root", "", "todo");

	// dodaje recenicu/task/zadatak ako je bio klik na submit dugme. 
	if (isset($_POST['submit'])) {

		if (empty($_POST['task'])) {
			$errors = "Morate uneti TASK !";
		}else{
			$task = $_POST['task'];
			$query = "INSERT INTO tasks (task) VALUES ('$task')";
			mysqli_query($db, $query);
			header('location: index.php');
		}
	}	

	// brisanje taska
	if (isset($_GET['del_task'])) {
		$id = $_GET['del_task'];

		mysqli_query($db, "DELETE FROM tasks WHERE id=".$id);
		header('location: index.php');
	}

	// selektuje sve taskove ako je vec posecena ili osvezena
	$tasks = mysqli_query($db, "SELECT * FROM tasks");

?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">	
	<link rel="stylesheet" type="text/css" href="style.css">
	<title>Darko's Advanced TODO List</title>	
</head>

<body>
<div style="overflow-x:auto;">
	<div class="heading">
		<h2 style="font-style: 'Hervetica';">Darko's Advanced TODO List</h2>
	</div>


	<form method="post" action="index.php" class="input_form">
		<?php if (isset($errors)) { ?>
			<p><?php echo $errors; ?></p>
		<?php } ?>
		<input type="text" name="task" class="task_input" placeholder="Ukucaj sledeći task i pritisni ENTER ili klikni na dugme!">
		<button type="submit" name="submit" id="add_btn" class="add_btn">Dodaj TASK!</button>
	</form>

	
	<table>
		<thead>
			<tr>
			<th style="text-align:center;width:150px">Redni broj</th>
            <th style="text-align:center;width:150px">Taskovi</th>
            <th style="text-align:center;width:150px">Datum</th>
			<th style="text-align:center;width:150px">Brisanje</th>
			</tr>
		</thead>
		
		<tbody>
			<?php $i = 1; while ($row = mysqli_fetch_array($tasks)) { ?>
				<tr>
					<td style="text-align:center"> <?php echo $i; ?> </td>
					<td class="task" style="text-align:left"><?php echo $row['task']; ?> </td>
					<td class="datum" style="text-align:center"><?php echo $row['datum']; ?> </td>
					<td class="delete" style="text-align:center">
						<a href="index.php?del_task=<?php echo $row['id'] ?>">x</a> 
					</td>
				</tr>
			<?php $i++; } ?>	
		</tbody>
	</table>
	</div>
</body>
</html>