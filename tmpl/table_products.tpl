<div class="products-row clearfix">
	<?php
		for ($i = 0; $i < count($this->products); $i++) {
			if ($i % 3 == 0) { ?>

			<?php } ?>
								<div class="col-sm-4">
									<div class="product">
										<div class="product-img">
											<a href="#"><img src="<?=$this->products[$i]["img"]?>" alt="<?=$this->products[$i]["title"]?>"></a>
										</div><!-- /.product-img -->
										<p class="product-title">
											<a href="<?=$this->products[$i]["link"]?>"><?=$this->products[$i]["title"]?></a>
										</p>
										<p class="product-desc">
											Signature NYX cosmetics
										</p>
										<div class="product-buy">
											<p class="product-price">
												Price: <?=$this->products[$i]["price"]?>
											</p>
											<a href="<?=$this->products[$i]["link_cart"]?>" class="btn btn-default ">add to cart</a>
										</div><!-- /.product-buy -->
									</div><!-- /.product -->
								</div>
			<?php if (($i + 1) % 3 == 0) { ?>
				
			<?php } ?>
	<?php } ?>
	 </div>
						</div> <!-- /.content -->
						