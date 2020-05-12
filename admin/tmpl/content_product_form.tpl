<h3><?=$this->form_title?></h3>
<?php include "message.tpl"; ?>
<div class="form">
	<form name="product" action="<?=$this->action?>" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>Раздел:</td>
				<td>
					<select name="section_id">
						<?php foreach ($this->sections as $section) { ?>
							<option value="<?=$section["id"]?>" <?php if ($section["id"] == $this->section_id) { ?>selected="selected"<?php } ?>><?=$section["title"]?></option>
						<?php } ?>
					</select>
				</td>
			</tr>
			<tr>
				<td>Название:</td>
				<td>
					<input type="text" name="pr_title" value="<?=$this->pr_title?>" />
				</td>
			</tr>
			<tr>
				<td>Цена:</td>
				<td>
					<input type="text" name="price" value="<?=$this->price?>" /> рублей
				</td>
			</tr>
			<tr>
				<td>Год:</td>
				<td>
					<input type="text" name="year" value="<?=$this->year?>" />
				</td>
			</tr>
			<tr>
				<td>Страна:</td>
				<td>
					<input type="text" name="country" value="<?=$this->country?>" />
				</td>
			</tr>
			<tr>
				<td>Режиссёр:</td>
				<td>
					<input type="text" name="director" value="<?=$this->director?>" />
				</td>
			</tr>
			<tr>
				<td>Продолжительность:</td>
				<td>
					<input type="text" name="play" value="<?=$this->play?>" />
				</td>
			</tr>
			<tr>
				<td>В ролях:</td>
				<td>
					<textarea name="cast" cols="30" rows="10"><?=$this->cast?></textarea>
				</td>
			</tr>
			<tr>
				<td>Описание:</td>
				<td>
					<textarea name="description" cols="30" rows="10"><?=$this->description?></textarea>
				</td>
			</tr>
			<tr>
				<td>Изображение:</td>
				<td>
					<input type="file" name="img" />
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