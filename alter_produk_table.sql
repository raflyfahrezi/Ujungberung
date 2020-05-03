ALTER TABLE `t_model`
	ALTER `kd_stock_last` DROP DEFAULT;
ALTER TABLE `t_model`
	CHANGE COLUMN `kd_stock_last` `jml_produk` INT(3) NOT NULL AFTER `deskripsi`;
