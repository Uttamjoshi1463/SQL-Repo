TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER calculate_total_amount\nBEFORE INSERT ON orders\nFOR EACH ROW\nBEGIN\n    SET NEW.total_amount = (\n        SELECT price FROM menuitems WHERE item_id = NEW.item_id\n    ) * NEW.quantity;\nEND'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci'
created=1697273950580963
