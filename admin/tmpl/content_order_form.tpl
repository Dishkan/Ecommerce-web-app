<h3><?=$this->form_title?></h3>
<?php include "message.tpl"; ?>
<div class="form">
	<form name="order" action="<?=$this->action?>" method="post">
		<h3>Заказ</h3>
		<table id="orders">
			<?php for ($i = 0; $i < count($this->products); $i++) { ?>
				<tr>
					<td>
						<select name="products_<?=$i?>">
							<?php for ($j = 0; $j < count($this->products_all); $j++) { ?>
								<option value="<?=$this->products_all[$j]["id"]?>" <?php if ($this->products_all[$j]["id"] == $this->products[$i]["id"]) { ?>selected="selected"<?php } ?>><?=$this->products_all[$j]["title"]?></option>
							<?php } ?>
						</select>
					</td>
					<td>
						<input type="text" name="count_<?=$i?>" value="<?=$this->products[$i]["count"]?>" /> шт.
					</td>
					<td>
						<p>
							<a href="#" onclick="return deleteItem(this.parentNode.parentNode.parentNode)">Удалить позицию</a>
						</p>
					</td>
				</tr>
			<?php } ?>
		</table>
		<p>
			<a href="#" onclick="return addItem()">Добавить позицию</a>
		</p>
		<table>
			<tr>
				<td>Способ доставки:</td>
				<td>
					<select name="delivery">
						<option value="0" <?php if ($this->delivery == 0) { ?>selected="selected"<?php } ?>>Доставка</option>
						<option value="1" <?php if ($this->delivery == 1) { ?>selected="selected"<?php } ?>>Самовывоз</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Цена:</td>
				<td>
					<input type="text" name="price" value="<?=$this->price?>" /> рублей
				</td>
			</tr>
			<tr>
				<td>ФИО:</td>
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
				<td>Адрес:</td>
				<td>
					<textarea name="address" cols="30" rows="10"><?=$this->address?></textarea>
				</td>
			</tr>
			<tr>
				<td>Примечание:</td>
				<td>
					<textarea name="notice" cols="30" rows="10"><?=$this->notice?></textarea>
				</td>
			</tr>
			<tr>
				<td>Отправлено:</td>
				<td>
					<select name="is_send">
						<option value="0" <?php if ($this->date_send == 0) { ?>selected="selected"<?php } ?>>Не отправлено</option>
						<option value="1" <?php if ($this->date_send != 0) { ?>selected="selected"<?php } ?>>Отправлено</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Оплачено:</td>
				<td>
					<select name="is_pay">
						<option value="0" <?php if ($this->date_pay == 0) { ?>selected="selected"<?php } ?>>Не оплачено</option>
						<option value="1" <?php if ($this->date_pay != 0) { ?>selected="selected"<?php } ?>>Оплачено</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="hidden" name="id" value="<?=$this->id?>" />
					<input type="hidden" name="func" value="<?=$this->func?>" />
					<input type="submit" value="Отправить" />
				</td>
			</tr>
		</table>
	</form>
</div>