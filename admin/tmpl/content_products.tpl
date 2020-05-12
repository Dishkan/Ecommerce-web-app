<h3>Товары</h3>
<?php include "message.tpl"; ?>
<?php include "pagination.tpl"; ?>
<p class="link_new">
	<a href="<?=$this->link_new?>">Добавить новый товар</a>
</p>
<table class="info">
	<tr class="header">
		<td>ID</td>
		<td>Раздел</td>
		<td>Название</td>
		<td>Цена</td>
		<td>Информация</td>
		<td>Дата добавления</td>
		<td>Функции</td>
	</tr>
	<?php foreach ($this->table_data as $data) { ?>
		<tr>
			<td><?=$data["id"]?></td>
			<td><?=$data["section"]?></td>
			<td>
				<?=$data["title"]?>
				<br />
				<img class="img" src="<?=$data["img"]?>" alt="<?=$data["title"]?>" />
			</td>
			<td><?=$data["price"]?> рублей</td>
			<td>
				<table>
					<tr>
						<td><b>Год:</b></td>
						<td><?=$data["year"]?></td>
					</tr>
					<tr>
						<td><b>Страна:</b></td>
						<td><?=$data["country"]?></td>
					</tr>
					<tr>
						<td><b>Режиссёр:</b></td>
						<td><?=$data["director"]?></td>
					</tr>
					<tr>
						<td><b>Продолжительность:</b></td>
						<td><?=$data["play"]?></td>
					</tr>
				</table>
			</td>
			<td><?=$data["date"]?></td>
			<td>
				<a href="<?=$data["link_admin_edit"]?>">Редактировать</a>
				<br />
				<a href="<?=$data["link_admin_delete"]?>" onclick="return confirm('Вы уверены, что хотите удалить элемент?')">Удалить</a>
			</td>
		</tr>
	<?php } ?>
</table>