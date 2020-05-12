<h3>Статистика за последние 7 дней</h3>
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