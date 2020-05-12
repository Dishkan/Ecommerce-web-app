<?php
require_once "adminform_class.php";

class AdminProductsContent extends AdminForm {
	
	protected $title = "Товары";
	protected $meta_desc = "Страница с товарами";
	protected $meta_key = "товары, список товаров";
	
	protected function getFormData() {
		$form_data = array();
		$this->template->set("sections", $this->section->getAllData());
		$form_data["fields"] = array("section_id", "pr_title", "price", "year", "country", "director", "play", "cast", "description"); 
		$form_data["func_add"] = "add_product";
		$form_data["func_edit"] = "edit_product";
		$form_data["title_add"] = "Добавление товара";
		$form_data["title_edit"] = "Редактирование товара";
		$form_data["get"] = $this->product->get($this->data["id"], $this->section->getTableName());
		$form_data["get"]["pr_title"] = $form_data["get"]["title"];
		$form_data["form_t"] = "product_form";
		$form_data["t"] = "products";
		$form_data["obj"] = $this->product;
		$form_data["table_data"] = $this->product->getTableData($this->section->getTableName(), $this->config->pagination_count, $this->page_info["offset"]);
		return $form_data;
	}
}

?>