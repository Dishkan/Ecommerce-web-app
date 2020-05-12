<?php
require_once "modules_class.php";

class ContactsContent extends Modules {
	
	protected $title = "Контакты";
	protected $meta_desc = "Контакты магазина.";
	protected $meta_key = "контакты, обратная связь, обратная связь администрация";
	
	protected function getContent() {
		return "contacts";
	}
	
}

?>