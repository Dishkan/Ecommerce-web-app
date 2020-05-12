<?php
class Config {
	public $secret = "IAMLEGENDFOREVER";
	public $sitename = "ShopDVD.ru";
	public $address = "http://shopdvd.local/";
	public $address_admin = "http://shopdvd.local/admin/";
	public $db_host = "localhost";
	public $db_user = "root";
	public $db_password = "";
	public $db_name = "shopdvd-local";
	public $db_prefix = "sdvd_";
	public $sym_query = "{?}";
	
	public $admname = "Михаил Русаков";
	public $admemail = "no-reply@myrusakov.ru";
	public $adm_login = "Dishkan";
	public $adm_password = "1cd57d73e2ad016a1b96ef856f106a9e";
	
	//echo md5("321"."IAMLEGENDFOREVER");
	
	public $count_on_page = 12;
	public $count_others = 6;
	
	public $pagination_count = 10;
	
	public $dir_text = "lib/text/";
	public $dir_tmpl = "tmpl/";
	public $dir_tmpl_admin = "admin/tmpl/";
	public $dir_img_products = "img/products/";
	
	public $max_name = 255;
	public $max_title = 255;
	public $max_text = 65535;
	
	public $max_size_img = 102400;
	
}
?>