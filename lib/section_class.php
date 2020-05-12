<?php
require_once "global_class.php";

class Section extends GlobalClass {
	
	public function __construct() {
		parent::__construct("sections");
	}
	
	public function getAllData() {
		return $this->transform($this->getAll("id"));
	}
	
	public function getTableData($count, $offset) {
		return $this->transform($this->getAll("id", true, $count, $offset));
	}
	
	public function get($id, $section_table) {
		return $this->transform(parent::get($id, $section_table));
	}
	
	protected function transformElement($section) {
		$section["link"] = $this->url->section($section["id"]);
		$section["link_admin_edit"] = $this->url->adminEditSection($section["id"]);
		$section["link_admin_delete"] = $this->url->adminDeleteSection($section["id"]);
		return $section;
	}
	
	protected function checkData($data) {
		if (!$this->check->title($data["title"])) return "ERROR_TITLE";
		return true;
	}
}

?>