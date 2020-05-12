<?php
require_once "modules_class.php";

class SectionContent extends Modules {
	
	
	protected function getContent() {
		$section_info = $this->section->get($this->data["id"], $section_table);
		if (!$section_info) return $this->notFound();
		$this->title = $section_info["title"];
		$this->meta_desc = "Список фильмов из раздела ".$section_info["title"];
		$this->meta_key = mb_strtolower("список фильмов, список фильмов жанр, список фильмов жанр ".$section_info["title"]);
		
		$this->setLinkSort();
		$sort = $this->data["sort"];
		$up = $this->data["up"];
		$this->template->set("table_products_title", $section_info["title"]);
		$this->template->set("products", $this->product->getAllOnSectionID($section_info["id"], $sort, $up));
		return "index";
	}
	
}

?>