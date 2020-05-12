<?php
require_once "modules_class.php";

class AddOrderContent extends Modules {
	
	protected $title = "Ваш заказ принят";
	protected $meta_desc = "Ваша заказ принят.";
	protected $meta_key = "заказ принят, заказ принят оплатить, заказ принят звонок";
	
	protected function getContent() {
		$this->template->set("id", $this->data["id"]);
		$this->template->set("price", $this->order->getPrice($this->data["id"]));
		return "addorder";
	}
	
}

?>