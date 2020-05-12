<div id="search_result">
<?php if ($this->q == "") { ?>
	<h2>Вы задали пустой поисковый запрос!</h2>
<?php } else { ?>
	<h2>Результаты поиска: <?=$this->q?></h2>
	<?php if (!$this->products) { ?>
		<p>Ничего не найдено</p>
	<?php } else { ?>
		<?php include "table_products_top.tpl"; ?>
		<?php include "table_products.tpl"; ?>
	<?php } ?>
<?php } ?>
</div>