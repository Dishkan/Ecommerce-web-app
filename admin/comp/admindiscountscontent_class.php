<?php
require_once "adminform_class.php";

class AdminDiscountsContent extends AdminForm {
	
	protected $title = "Купоны";
	protected $meta_desc = "Страница с купонами";
	protected $meta_key = "купоны, список купонов";
	
	protected function getFormData() {
		$form_data = array();
		$form_data["fields"] = array("code", "value"); 
		$form_data["func_add"] = "add_discount";
		$form_data["func_edit"] = "edit_discount";
		$form_data["title_add"] = "Добавление купона";
		$form_data["title_edit"] = "Редактирование купона";
		$form_data["get"] = $this->discount->get($this->data["id"]);
		$form_data["form_t"] = "discount_form";
		$form_data["t"] = "discounts";
		$form_data["obj"] = $this->discount;
		$form_data["table_data"] = $this->discount->getTableData($this->config->pagination_count, $this->page_info["offset"]);
		return $form_data;
	}
}

?>