TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `get_price` AFTER INSERT ON `halls` FOR EACH ROW begin\n\nUPDATE shows s, price_listing p \nSET s.price_id=p.price_id \nWHERE p.price_id IN \n(SELECT price_id \nFROM price_listing p \nWHERE dayname(s.Date)=p.day AND s.type=p.type);\n\nend'
sql_modes=524288
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci'
created=1708685052769280
