<div id="order">
	<h2>Оформление заказа</h2>
	<?php include "message.tpl"; ?>
	<form name="order" action="<?=$this->action?>" method="post">
		<table>
			<tr>
				<td class="w120">ФИО:</td>
				<td>
					<input type="text" name="name" value="<?=$this->name?>" />
				</td>
			</tr>
			<tr>
				<td>Телефон:</td>
				<td>
					<input type="text" name="phone" value="<?=$this->phone?>" />
				</td>
			</tr>
			<tr>
				<td>E-mail:</td>
				<td>
					<input type="text" name="email" value="<?=$this->email?>" />
				</td>
			</tr>
			<tr>
				<td>Доставка:</td>
				<td>
					<select name="delivery" onchange="changeDelivery(this)">
						<option value="">выберите, пожалуйста...</option>
						<option value="0" <?php if ($this->delivery == "0") { ?>selected="selected"<?php }?>>Доставка</option>
						<option value="1" <?php if ($this->delivery == "1") { ?>selected="selected"<?php }?>>Самовывоз</option>
					</select>
				</td>
			</tr>
		</table>
		<table>
			<tr id="address">
				<td>
					<p>Полный адрес (Страна, город, индекс, улица, дом, квартира):</p>
					<textarea name="address" cols="80" rows="6"><?=$this->address?></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<p>Примечание к заказу:</p>
					<textarea name="notice" cols="80" rows="6"><?=$this->notice?></textarea>
				</td>
			</tr>
			<tr>
				<td class="button">
					<input type="hidden" name="func" value="order" />
					<input type="image" src="images/order_end.png" alt="Закончить оформление заказа" onmouseover="this.src='images/order_end_active.png'" onmouseout="this.src='images/order_end.png'" />
				</td>
			</tr>
		</table>
	</form>
</div>