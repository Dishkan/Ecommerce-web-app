<h3>Статистика</h3>
<div class="form">
	<form name="statistics" action="" method="get">
		<table>
			<tr>
				<td>От:</td>
				<td>
					<input type="text" name="start" value="<?=$this->start?>" />
				</td>
			</tr>
			<tr>
				<td>До:</td>
				<td>
					<input type="text" name="end" value="<?=$this->end?>" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="hidden" name="view" value="statistics" />
					<input type="submit" name="statistics" value="Показать" />
				</td>
			</tr>
		</table>
	</form>
</div>
<h3>Результат</h3>
<table class="info">
	<tr class="header">
		<td>Количество заказов</td>
		<td>Счетов на сумму</td>
		<td>Доход</td>
		<td>Купленных DVD</td>
	</tr>
	<tr>
		<td><?=$this->result["count_orders"]?></td>
		<td><?=$this->result["summa_account"]?> рублей</td>
		<td><?=$this->result["income"]?> рублей</td>
		<td><?=$this->result["count_dvd"]?></td>
	</tr>
</table>