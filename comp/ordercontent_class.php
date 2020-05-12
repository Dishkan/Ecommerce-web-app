<?php
require_once "modules_class.php";

class OrderContent extends Modules {
	
	protected $title = "Оформление заказа";
	protected $meta_desc = "Оформление заказа на покупку фильмов.";
	protected $meta_key = "заказ, оформление заказа, оформление заказа фильмы";
	
	protected function getContent() {
		$this->template->set("message", $this->message());
		$this->template->set("name", $_SESSION["name"]);
		$this->template->set("phone", $_SESSION["phone"]);
		$this->template->set("email", $_SESSION["email"]);
		$this->template->set("delivery", $_SESSION["delivery"]);
		$this->template->set("address", $_SESSION["address"]);
		$this->template->set("notice", $_SESSION["notice"]);
		return "order";
	}
	
}

?>