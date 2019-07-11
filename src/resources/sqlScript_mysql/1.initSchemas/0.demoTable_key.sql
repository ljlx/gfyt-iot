ALTER TABLE gfyt_iot.test_b
	ADD CONSTRAINT fk_testA_id FOREIGN KEY (aid) REFERENCES gfyt_iot.test_a(id);

ALTER TABLE gfyt_iot.test_c
	ADD CONSTRAINT fk_testB_id FOREIGN KEY (bid) REFERENCES gfyt_iot.test_b(id);