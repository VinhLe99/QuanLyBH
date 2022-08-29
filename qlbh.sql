
Create Database QLBH;

Use QLBH;

Create Table product(
	id int auto_increment primary key,
	product_name	varchar(200),
	product_avatar varchar(150),
	product_price float,
	product_type int,
	product_description varchar(500),
	product_screen_type varchar(200),
    product_screen_size varchar(200),
	product_front_camere varchar(200),
	product_back_camera varchar(200),
    product_producer varchar(200),
    product_status enum("1","2")
);

Create Table roles(
	id int auto_increment Primary Key,
	role_name varchar(200)
);

Create Table staff(
	id int auto_increment primary key,
	staff_name varchar(200),
	phone_number int,
	email varchar(100),
    password varchar(100),
	staff_address varchar(300),
    gender enum("1","2","3"),
    birthofday date
);

CREATE Table staff_role(
	role_id int,
    staff_id int,    
    primary key(role_id,staff_id),
    foreign key(role_id) references roles(id),
    foreign key(staff_id) references staff(id)
);

Create Table customer(
	id int auto_increment Primary Key,
	customer_name varchar(50),
	phone_number int,
    mail varchar(200),
	customer_address varchar(200),
    gender enum("1","2","3"),
    birthofday date,
	status int
);

Create Table cart(
	id int auto_increment primary key,
	product_id int,
    staff_id int,
	customer_id int,
    foreign key(staff_id) references staff(id),
    foreign key(product_id) references customer(id),
	foreign key(customer_id) references product(id)
);

Create Table cartdetail(
	id int auto_increment Primary Key,
	cart_id int,
	quantity int,
	total_money float,
    foreign key(cart_id) references cart(id)
);
	-- Insert roles table
insert into roles(role_name) values("ROLE_ADMIN");
insert into roles(role_name) values("ROLE_STAFF");
	-- Insert product table
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Realme C3i", "realmeC3i.png",
"390.00","Product of thegioididong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "lcd","6.2 in",
"9.5Mp","10Mp","Realme",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("OPPO Reno7 5G", "oppo7x.png",
"440.00","Product of thegioididong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "3cd","6.5 in",
"11Mp","11.5Mp","OPPO",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Iphone 12 Pro Max", "iphone12Pro.png",
"850.45","Product of CellPhoneZ Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "A14","6.7 in",
"12Mp","12Mp","Iphone",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Samsung Galaxy A30s", "samsungA30.png",
"310.00","Product of Lazada. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.8cd","6.4 in", 
"16Mp","25Mp","SamSung",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Vivo V19", "vivoV19.png",
"180.66","Product of thegioididong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.1cd","6.44 in", 
"8Mp","32Mp","Vivo",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Iphone Xr", "iphoneXr.jpg",
"565.55","Product of thegioididong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "A9","6.2 in", 
"10Mp","10Mp","Iphone",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Iphone 13", "iphone13.png",
"990.90","Product of thegioididong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "A16","6.8 in",
 "16Mp","16Mp","Iphone",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Iphone X", "iphoneX.png",
"720.00","Product of CellPhoneZ. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "A12","6.7 in", 
"14Mp","14Mp","Iphone",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("OPPO A55", "oppoA55.png",
"499.99","Product of thegioididong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "3.2cd","6.6 in", 
"13Mp","13.5Mp","OPPO",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("OPPO A53", "oppoA53.jpg",
"489.00","Product of CellPhoneZ. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "3.2cd","6.5 in", 
"11.5Mp","12Mp","OPPO",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("OPPO A94", "oppoA94.png",
"525.00","Product of CellPhoneZ. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "4cd","6.8 in", 
"13.5Mp","15Mp","OPPO",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Realme 3 Pro", "realme3pro.png",
"375.30","Product of didongviet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "l.3cd","6.4 in", 
"10Mp","10.5Mp","Realme",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Realme 5 Pro", "realme5pro.jpg",
"418.88","Product of didongviet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "l.5cd","6.5 in", 
"12Mp","12.5Mp","Realme",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Realme X", "realmeX.png",
"399.00","Product of didongviet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "l.4cd","6.4 in", 
"11Mp","12Mp","Realme",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Vivo Y01", "vivoY01.jpg",
"220.66","Product of didongviet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.2cd","6.5 in", 
"12Mp","32Mp","Vivo",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Vivo V17", "vivoV17.png",
"240.99","Product of didongviet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.4cd","6.6 in", 
"16Mp","32Mp","Vivo",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Vivo Z1x", "vivoZ1x.png",
"309.99","Product of Lazada. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.6cd","6.7 in", 
"20Mp","36Mp","Vivo",1, 1);
-- insert tablet
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("IPad Air 4", "IPadAir4.jpg",
"589.89","Product of Lazada. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "3.6cd","10.9 in", 
"24Mp","36Mp","IPad",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("IPad Pro 12", "IPadPro12.jpg",
"569.69","Product of CellPhoneZ. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.01ld","10.9 in", 
"22Mp","34Mp","IPad",2, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("IPad Pro 11", "IPadPro11.jpg",
"540.44","Product of didongviet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.02ld","10.8 in", 
"20Mp","32Mp","IPad",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("IPad 7S", "IPad7.png",
"511.00","Product of CellPhoneZ. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "2.5cd","10.7 in", 
"20Mp","30Mp","IPad",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("SamSung Galaxy S7", "SamsungTabS7.jpg",
"489.99","Product of CellPhoneZ. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.4ld","10.9 in", 
"28Mp","36Mp","TSam",2, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("SamSung Galaxy S6", "samsungGtabS6.jpg",
"465.33","Product of thegioididong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.3ld","10.8 in", 
"26Mp","34Mp","TSam",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("SamSung Galaxy S4", "SamsungGtabS4.jpg",
"442.65","Product of Lazada. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.2ld","10.8 in", 
"24Mp","32Mp","TSam",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("SamSung Galaxy T1", "samsungGalaxy.jpg",
"400.95","Product of Lazada. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.2ld","10.9 in", 
"22Mp","30Mp","TSam",2, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("ZToptop Care S6", "ZtoptopCareS6.jpg",
"399.99","Product of CellPhoneZ. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.4ld","10.8 in", 
"26Mp","36Mp","Tab1",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Tablet Care S4", "tabletCase.jpg",
"375.87","Product of didongviet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.3ld","10.7 in", 
"24Mp","34Mp","Tab1",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Lite Book S6", "s6litebook.jpg",
"369.69","Product of CellPhoneZ. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.2ld","10.8 in", 
"24Mp","32Mp","Tab1",2, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Tablet Asus Z", "tabletAsus.png",
"326.11","Product of Lazada. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.1ld","10.7 in", 
"22Mp","30Mp","Tab1",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Lenovo Tab 3", "lenovoTab3.png",
"288.86","Product of thegioididong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.4ld","10.8 in", 
"24Mp","32Mp","Tab2",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Lenovo Hero", "lenovohero.png",
"279.98","Product of thegioididong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.3ld","10.7 in", 
"22Mp","30Mp","Tab2",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Mobell Tab 10", "mobellTab10.jpg",
"269.26","Product of thegioididong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.2ld","10.8 in", 
"24Mp","32Mp","Tab2",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("HuaWei Pad T1", "HuaWeiPadT1.png",
"255.15","Product of CellPhoneZ. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "1.1ld","10.7 in", 
"20Mp","28Mp","Tab2",2, 2);
-- insert laptop
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Acer Aspire E5", "acerAspireE5.png",
"1080.85","Product of PhongVu. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i5","15.7 in", 
"12Mp",null,"Acer",3, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Acer Concept D7", "acerConceptD7.jpg",
"1075.85","Product of PCGaming. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i5","15.7 in", 
"14Mp",null,"Acer",3, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Acer MSI GE62", "acerMsiGE62.png",
"1055.25","Product of PCGaming. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i5","15.7 in", 
"12Mp",null,"Acer",3, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Acer MSI TP5", "acerTP5.png",
"1052.55","Product of PhongVu. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i5","15.7 in", 
"12Mp",null,"Acer",3, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("MacBook Pro Mpxr", "MacbookProMpxr.jpg",
"1390.95","Product of AppleViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i7","13.3 in", 
"16Mp",null,"Mac",3, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("MacBook Air 13", "MacbookAir13.jpg",
"1350.55","Product of AppleViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i7","13.5 in", 
"16Mp",null,"Mac",3, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("MacBook Pro 13", "MacbookPro13.jpg",
"1290.80","Product of PCGaming. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i5","13.4 in", 
"14Mp",null,"Mac",3, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("MacBook Pro 12", "Macbook12.png",
"1175.25","Product of AppleViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i5","13.3 in", 
"12Mp",null,"Mac",3, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Dell M515384W", "DellM515384W.png",
"920.35","Product of PhongVu. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i5","14.7 in", 
"12Mp",null,"Dell",3, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Dell Insp 11", "DELLinsp.jpg",
"869.66","Product of PCGaming. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i5","14.5 in", 
"13Mp",null,"Dell",3, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Dell 5567 Inspiron", "Dell5567inspiron.png",
"735.55","Product of PhongVu. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i5","14.7 in", 
"12Mp",null,"Dell",3, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Dell 24 IP", "Dell24iP.png",
"681.95","Product of PCGaming. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i3","14.2 in", 
"10Mp",null,"Dell",3, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Asus Gaming G15", "AsusGamingG15.jpg",
"599.99","Product of PCGaming. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i7","14.7 in", 
"16Mp",null,"Asus",3, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Asus X54 Oua", "AsusX54Oua.jpg",
"539.39","Product of Asus. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i5","14.5 in", 
"14Mp",null,"Asus",3, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Asus X441 UA", "AsusX441UA.png",
"515.11","Product of Asus. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i3","13.3 in", 
"12Mp",null,"Asus",3, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Asus X541 NA", "AsusX541NA.png",
"486.23","Product of Asus. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", "Core i3","13.3 in", 
"10Mp",null,"Asus",3, 1);
-- insert Order
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Apple Watch S5", "apple-watch-s5.jpg",
"258.44","Product of AppleViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,"1.5 in", 
null,null,"Wathch",4, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Apple Watch S3 GPS", "apple-watch-s3-gps.jpg",
"249.94","Product of AppleViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,"1.5 in", 
null,null,"Wathch",4, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Xiaomi Amazfit Watch", "donghoXiaomiAmazfit.jpg",
"235.75","Product of WatchGP. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,"1.3 in", 
null,null,"Wathch",4, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Bluetool A3 Watch", "bluetoothWatch.jpg",
"212.25","Product of WatchGP. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,"1.2 in", 
null,null,"Wathch",4, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Console PS5 Digital", "ConsolePs5Digital.jpg",
"398.99","Product of GamingZ. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order1",4, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("PS5 Dual USB", "PS5DualUSBType-C.jpg",
"388.77","Product of GamingZ. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order1",4, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Loa Bluetooht A2", "loaBluetoothA2.png",
"195.57","Product of TheGioiDiDong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order1",4, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Loa Bluetooth JBL", "loa-bluetooth-jbl.jpg",
"182.86","Product of TheGioiDiDong. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order1",4, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("EarPods Apple Jack", "EarPodsAppleJack.jpg",
"151.99","Product of AppleViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order2",4, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Tai_Nghe P9", "taingheP9.png",
"103.33","Product of AppleViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order2",4, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Tai_Nghe Bluetooth 5.0", "taingheBluetooth5.0.jpg",
"97.27","Product of PhoneViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order2",4, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Tai_Nghe Black Berry Dtek", "tai-nghe-blackberry-dtek.jpg",
"86.27","Product of PhoneViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order2",4, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Chuot IMICE-V5", "chuotIMICE-V5.png",
"79.66","Product of PCViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order3",4, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Chuot Apedra-A5", "chuotAPEDRA-A5.png",
"65.65","Product of PCViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order3",4, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Chuot SKYSM-A10", "chuotSKYSM-A10.png",
"58.45","Product of PCViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order3",4, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Chuot A4 Tech", "chuotA4Tech.jpg",
"50.00","Product of PCViet. Price includes 10% VAT. 12 months warranty at genuine Apple Vietnam service center", null,null, 
null,null,"Order3",4, 1);

DELIMITER //
create procedure GetAllStaff()
begin
	select st.staff_name, st.phone_number, st.email, st.staff_address, st.gender, st.birthofday, r.role_name
	from QLBH.staff st
	join QLBH.staff_role sr on st.id=sr.staff_id
    join QLBH.roles r on sr.role_id=r.id;
end//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetAllRoleByStaff(email varchar(255))
BEGIN
	select r.role_name 
	from QLBH.staff s
	join QLBH.staff_role rs on s.id = rs.staff_id
	join QLBH.roles r on r.id = rs.role_id
	where s.email = email;
END //
DELIMITER ;
-- phone
DELIMITER //
CREATE PROCEDURE GetProductByPhone()
BEGIN
	select p.product_name, p.product_avatar, p.product_price
from product p
where p.product_producer = "Iphone" or
	  p.product_producer = "OPPO" or
      p.product_producer = "Realme" or
       p.product_producer = "Vivo"
order by 
	p.product_price DESC;
END //
DELIMITER ;
-- tablet
DELIMITER //
CREATE PROCEDURE GetProductByTablet()
BEGIN
	select p.product_name, p.product_avatar, p.product_price
from product p
where p.product_producer = "IPad" or
	  p.product_producer = "TSam" or
      p.product_producer = "Tab1" or
       p.product_producer = "Tab2"
order by 
	p.product_price DESC;
END //
DELIMITER ;
-- laptop
DELIMITER //
CREATE PROCEDURE GetProductByLaptop()
BEGIN
	select p.product_name, p.product_avatar, p.product_price
from product p
where p.product_producer = "Mac" or
	  p.product_producer = "Acer" or
      p.product_producer = "Dell" or
       p.product_producer = "Asus"
order by 
	p.product_price DESC;
END //
DELIMITER ;
-- order
DELIMITER //
CREATE PROCEDURE GetProductByOther()
BEGIN
	select p.product_name, p.product_avatar, p.product_price
from product p
where p.product_producer = "Watch" or
	  p.product_producer = "Order1" or
      p.product_producer = "Order2" or
       p.product_producer = "Order3"
order by 
	p.product_price DESC;
END //
DELIMITER ;
call  GetProductByOther();