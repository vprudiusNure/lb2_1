<?php
	require_once 'db.php';

	// список компьютеров с истекшим гарантийным сроком
	if (isset($_GET['getBtn'])) {
		$guaranteeDate = date('Y-m-d', strtotime(htmlspecialchars($_GET['guaranteeDate'])));

		$stmt = $dbh->prepare("SELECT `computer`.`netname`, `computer`.`motherboard`, `computer`.`ram_capacity`, `computer`.`hdd_capacity`, `computer`.`monitor`, `computer`.`vendor`, `computer`.`purchase`, `computer`.`guarantee`, `processor`.`name`, `processor`.`frequency` FROM `computer`, `processor` WHERE `processor`.`id` = `computer`.`processor_id` AND DATE(`computer`.`guarantee`) < DATE(?) ORDER BY `computer`.`guarantee` ASC");
		$stmt->execute([$guaranteeDate]);

		foreach ($stmt as $row) {
			$purchase_date = strtotime($row['purchase']);
			$guarantee_date = strtotime($row['guarantee']);

			printf("<p><b>%s %s</b><br>Процессор: %s (%.1f ГГц)<br>Материнская плата: %s<br>Монитор: %s<br>Внутренний накопитель: %d ГБ<br>Оперативная память: %d ГБ<br>Дата покупки: %s<br>Дата истечения гарантийного срока: <span style=\"color: red;\">%s (%d года) <b>Срок гарантии истёк!</b><span></p>", $row['vendor'], $row['netname'], $row['name'], $row['frequency'], $row['motherboard'], $row['monitor'], $row['hdd_capacity'], $row['ram_capacity'], date("d.m.Y", $purchase_date), date("d.m.Y", $guarantee_date), date("Y", $guarantee_date) - date("Y", $purchase_date));
		}
	}
