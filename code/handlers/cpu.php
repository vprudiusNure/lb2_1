<?php
	require_once 'db.php';

	// список компьютеров с заданным типом центрального процессора
	if (isset($_GET['getBtn'])) {
		$cpuId = filter_input(INPUT_GET, 'cpuList', FILTER_VALIDATE_INT);

		$stmt = $dbh->prepare("SELECT `computer`.`netname`, `computer`.`motherboard`, `computer`.`ram_capacity`, `computer`.`hdd_capacity`, `computer`.`monitor`, `computer`.`vendor`, `computer`.`purchase`, `computer`.`guarantee`, `processor`.`name`, `processor`.`frequency` FROM `computer`, `processor` WHERE `processor`.`id` = `computer`.`processor_id` AND `computer`.`processor_id` = ?");
		$stmt->execute([$cpuId]);

		foreach ($stmt as $row) {
			$purchase_date = strtotime($row['purchase']);
			$guarantee_date = strtotime($row['guarantee']);

			printf("<p><b>%s %s</b><br>Процессор: %s (%.1f ГГц)<br>Материнская плата: %s<br>Монитор: %s<br>Внутренний накопитель: %d ГБ<br>Оперативная память: %d ГБ<br>Дата покупки: %s<br>Дата истечения гарантийного срока: %s (%d года)</p>", $row['vendor'], $row['netname'], $row['name'], $row['frequency'], $row['motherboard'], $row['monitor'], $row['hdd_capacity'], $row['ram_capacity'], date("d.m.Y", $purchase_date), date("d.m.Y", $guarantee_date), date("Y", $guarantee_date) - date("Y", $purchase_date));
		}
	}
