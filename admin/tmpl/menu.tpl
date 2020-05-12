<?php if ($this->auth) { ?>
	<div id="menu">
		<h2>Меню</h2>
		<table>
			<tr>
				<td>
					<a href="<?=$this->index?>">Главная</a>
				</td>
				<td>
					<a href="<?=$this->link_products?>">Товары</a>
				</td>
				<td>
					<a href="<?=$this->link_orders?>">Заказы</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="<?=$this->link_sections?>">Разделы</a>
				</td>
				<td>
					<a href="<?=$this->link_discounts?>">Купоны</a>
				</td>
				<td>
					<a href="<?=$this->link_statistics?>">Статистика</a>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<a href="<?=$this->logout?>">Выход</a>
				</td>
			</tr>
		</table>
	</div>
	<hr />
<?php } ?>