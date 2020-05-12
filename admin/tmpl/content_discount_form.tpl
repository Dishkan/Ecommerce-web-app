<h3><?=$this->form_title?></h3>
<?php include "message.tpl"; ?>
<div class="form">
	<form name="discount" action="<?=$this->action?>" method="post">
		<table>
			<tr>
				<td>Код:</td>
				<td>
					<input type="text" name="code" value="<?=$this->code?>" />
				</td>
			</tr>
			<tr>
				<td>Размер скидки:</td>
				<td>
					<input type="text" name="value" value="<?=$this->value?>" />
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