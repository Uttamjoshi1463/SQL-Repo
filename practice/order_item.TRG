TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER calculate_subtotal\nBEFORE INSERT ON order_item\nFOR EACH ROW\nBEGIN\n    SET NEW.subtotal = (\n        SELECT price FROM item WHERE item_id = NEW.item_id\n    ) * NEW.quantity;\nEND'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci'
created=1697271633499446
