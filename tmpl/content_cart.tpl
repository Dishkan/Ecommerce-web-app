<div id="cart">
	<h2>Корзина</h2>
	<form name="cart" action="<?=$this->action?>" method="post">
		<table>
			<tr>
				<td colspan="8" id="cart_top"></td>
			</tr>
			<tr>
				<td class="cart_left"></td>
				<td colspan="2">Товар</td>
				<td>Цена за 1 шт.</td>
				<td>Количество</td>
				<td>Стоимость</td>
				<td></td>
				<td class="cart_right"></td>
			</tr>
			<tr>
				<td class="cart_left"></td>
				<td colspan="6">
					<hr />
				</td>
				<td class="cart_right"></td>
			</tr>
			<?php for ($i = 0; $i < count($this->cart); $i++) { ?>
				<tr class="cart_row">
					<td class="cart_left"></td>
					<td class="img">
						<img src="<?=$this->cart[$i]["img"]?>" alt="<?=$this->cart[$i]["title"]?>" />
					</td>
					<td class="title"><?=$this->cart[$i]["title"]?></td>
					<td><?=$this->cart[$i]["price"]?> руб.</td>
					<td>
						<table class="count">
							<tr>
								<td>
									<input type="text" name="count_<?=$this->cart[$i]["id"]?>" value="<?=$this->cart[$i]["count"]?>" />
								</td>
								<td>шт.</td>
							</tr>
						</table>
					</td>
					<td class="bold"><?=$this->cart[$i]["summa"]?> руб.</td>
					<td>
						<a href="<?=$this->cart[$i]["link_delete"]?>" class="link_delete">x удалить</a>
					</td>
					<td class="cart_right"></td>
				</tr>
				<?php if ($i + 1 != count($this->cart)) { ?>
					<tr>
					<td class="cart_left"></td>
					<td colspan="6" class="cart_border">
						<hr />
					</td>
					<td class="cart_right"></td>
				</tr>
				<?php } ?>
			<?php } ?>
			<tr id="discount">
				<td class="cart_left"></td>
				<td colspan="6">
					<form name="discount" action="#" method="post">
						<table>
							<tr>
								<td>Введите номер купона со скидкой<br /><span>(если есть)</span></td>
								<td>
									<input type="text" name="discount" value="<?=$this->discount?>" />
								</td>
								<td>
									<input type="image" src="images/cart_discount.png" alt="Получить скидку" onmouseover="this.src='images/cart_discount_active.png'" onmouseout="this.src='images/cart_discount.png'" />
								</td>
							</tr>
						</table>
					</form>
				</td>
				<td class="cart_right"></td>
			</tr>
			<tr id="summa">
				<td class="cart_left"></td>
				<td colspan="6">
					<p>Итого <?php if ($this->discount) { ?>(с учётом скидки)<?php }?>: <span><?=$this->summa?> руб.</span></p>
				</td>
				<td class="cart_right"></td>
			</tr>
			<tr>
				<td class="cart_left"></td>
				<td colspan="2">
					<div class="left">
						<input type="image" src="images/cart_recalc.png" alt="Пересчитать" onmouseover="this.src='images/cart_recalc_active.png'" onmouseout="this.src='images/cart_recalc.png'" />
					</div>
				</td>
				<td colspan="4">
					<div class="right">
						<input type="hidden" name="func" value="cart" />
						<a href="<?=$this->link_order?>">
							<img src="images/cart_order.png" alt="Оформить заказ" onmouseover="this.src='images/cart_order_active.png'" onmouseout="this.src='images/cart_order.png'" />
						</a>
					</div>
				</td>
				<td class="cart_right"></td>
			</tr>
			<tr>
				<td colspan="8" id="cart_bottom"></td>
			</tr>
		</table>
	</form>
</div>