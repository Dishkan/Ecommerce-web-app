<h3>Заказы</h3>
<?php include "message.tpl"; ?>
<?php include "pagination.tpl"; ?>
<p class="link_new">
	<a href="<?=$this->link_new?>">Добавить новый заказ</a>
</p>
<table class="info">
	<tr class="header">
		<td>ID</td>
		<td>Способ доставки</td>
		<td>Заказ</td>
		<td>Цена</td>
		<td>ФИО</td>
		<td>Телефон</td>
		<td>E-mail</td>
		<td>Адрес</td>
		<td>Примечание</td>
		<td>Дата заказа</td>
		<td>Дата отправки</td>
		<td>Дата оплаты</td>
		<td>Функции</td>
	</tr>
	<?php foreach ($this->table_data as $data) { ?>
		<tr>
			<td><?=$data["id"]?></td>
			<td><?php if ($data["delivery"] == 0) { ?>Доставка<?php } else { ?>Самовывоз<?php } ?></td>
			<td>
				<?php foreach ($data["products"] as $product) { ?>
					<p><?=$product["title"]?> (<?=$product["count"]?> шт.)</p>
				<?php } ?>
			</td>
			<td><?=$data["price"]?></td>
			<td><?=$data["name"]?></td>
			<td><?=$data["phone"]?></td>
			<td><?=$data["email"]?></td>
			<td><?=$data["address"]?></td>
			<td><?=$data["notice"]?></td>
			<td><?=$data["date_order"]?></td>
			<td><?php if ($data["date_send"] == 0) { ?>Не отправлено<?php } else { ?><?=$data["date_send"]?><?php } ?></td>
			<td><?php if ($data["date_pay"] == 0) { ?>Не оплачено<?php } else { ?><?=$data["date_pay"]?><?php } ?></td>
			<td>
				<a href="<?=$data["link_admin_edit"]?>">Редактировать</a>
				<br />
				<a href="<?=$data["link_admin_delete"]?>" onclick="return confirm('Вы уверены, что хотите удалить элемент?')">Удалить</a>
			</td>
		</tr>
	<?php } ?>
</table>