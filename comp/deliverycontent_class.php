<?php
require_once "modules_class.php";

class DeliveryContent extends Modules {
	
	protected $title = "Оплата и доставка";
	protected $meta_desc = "Оплата и доставка в Интернет-магазине.";
	protected $meta_key = "оплата, доставка, оплата доставка магазин";
	
	protected function getContent() {
		return "delivery";
	}
	
}

?>