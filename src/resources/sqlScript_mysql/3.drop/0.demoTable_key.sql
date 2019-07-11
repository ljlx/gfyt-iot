ALTER TABLE gfyt_iot.test_c
	DROP FOREIGN KEY fk_testB_id;

ALTER TABLE gfyt_iot.test_b
	DROP FOREIGN KEY fk_testA_id;