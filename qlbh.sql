Create Database QLBH;

Use QLBH;

Create Table product(
	id int auto_increment primary key,
	product_name varchar(200),
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
	-- Insert staff table
insert into staff(staff_name,password,phone_number,email,staff_address,gender,birthofday) values("admin", "admin123",
0123456789,"admin@gmail.com","123 Lý Thường Kiệt, quận Bình Thạnh, TP HCM", 1, "1990-12-7");
insert into staff(staff_name,password,phone_number,email,staff_address,gender,birthofday) values('Đào Thị D', 'd123', '903241562', 
'daothid@gmail.com', '50/36 Lê Thị Hồng, quận Gò Vấp, TP HCM', '2', '2000-02-20');
insert into staff(staff_name,password,phone_number,email,staff_address,gender,birthofday) values("Nguyễn Văn A", "a123",
0987654321,"vanA123@gmail.com","20/223 Nguyễn Trãi, quận 3, TP HCM", 1, "1997-3-21");
insert into staff(staff_name,password,phone_number,email,staff_address,gender,birthofday) values("Nguyễn Thị C", "b123",
0981237465,"nguyenvanB@gmail.com","111 Điện Biên Phủ, quận Bình Thạnh, TP HCM", 2, "1998-9-14");
insert into staff(staff_name,password,phone_number,email,staff_address,gender,birthofday) values("Phạm Thị O", "123123",
0937821456,"phamthio@gmail.com","231 Nguyễn Oanh, quận Gò Vấp, TP HCM", 2, "1994-8-30");
insert into staff(staff_name,password,phone_number,email,staff_address,gender,birthofday) values("Tran Tien T", "t123",
0914562378,"trantient@gmail.com","34 Tiền Giang, quận Tân Bình, TP HCM", 1, "1992-10-16");
-- Insert staff_roles table
insert into staff_role(role_id, staff_id) values(1,1);
insert into staff_role(role_id, staff_id) values(2,2);
insert into staff_role(role_id, staff_id) values(2,3);
insert into staff_role(role_id, staff_id) values(2,4);
insert into staff_role(role_id, staff_id) values(2,5);
-- Insert product table
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Realme C3i", "realmeC3i.png",
"390.00","San pham cua thegioididong", "lcd","6.2 in", "9.5Mp","10Mp","Realme",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("OPPO Reno7 5G", "oppo7xs.png",
"440.00","San pham cua thegioididong", "3cd","6.5 in", "11Mp","11.5Mp","OPPO",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Iphone 12 Pro Max", "iphone12Pro.png",
"850.45","San pham cua CellPhoneZ", "A14","6.7 in", "12Mp","12Mp","Iphone",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Samsung Galaxy A30s", "samsungA30.png",
"310.00","San pham cua Lazada", "1.8cd","6.4 in", "16Mp","25Mp","SamSung",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Vivo V19", "vivoV19.png",
"180.66","San pham cua thegioididong", "1.1cd","6.44 in", "8Mp","32Mp","Vivo",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Iphone Xr", "iphoneXr.jpg",
"565.55","San pham cua thegioididong", "A9","6.2 in", "10Mp","10Mp","Iphone",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Iphone 13", "iphone13.png",
"990.90","San pham cua thegioididong", "A16","6.8 in", "16Mp","16Mp","Iphone",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Iphone X", "iphoneX.png",
"720.00","San pham cua CellPhoneZ", "A12","6.7 in", "14Mp","14Mp","Iphone",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("OPPO A55", "oppoA55.png",
"499.99","San pham cua thegioididong", "3.2cd","6.6 in", "13Mp","13.5Mp","OPPO",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("OPPO A53", "oppoA53.jpg",
"489.00","San pham cua CellPhoneZ", "3.2cd","6.5 in", "11.5Mp","12Mp","OPPO",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("OPPO A94", "oppoA94.png",
"525.00","San pham cua CellPhoneZ", "4cd","6.8 in", "13.5Mp","15Mp","OPPO",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Realme 3 Pro", "realme3pro.png",
"375.30","San pham cua didongviet", "l.3cd","6.4 in", "10Mp","10.5Mp","Realme",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Realme 5 Pro", "realme5pro.jpg",
"418.88","San pham cua didongviet", "l.5cd","6.5 in", "12Mp","12.5Mp","Realme",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Realme X", "realmeX.png",
"399.00","San pham cua didongviet", "l.4cd","6.4 in", "11Mp","12Mp","Realme",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Vivo Y01", "vivoY01.jpg",
"220.66","San pham cua didongviet", "1.2cd","6.5 in", "12Mp","32Mp","Vivo",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Vivo V17", "vivoV17.png",
"240.99","San pham cua didongviet", "1.4cd","6.6 in", "16Mp","32Mp","Vivo",1, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Vivo Z1x", "vivoZ1x.png",
"309.99","San pham cua Lazada", "1.6cd","6.7 in", "20Mp","36Mp","Vivo",1, 1);

-- insert tablet
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("IPad Air 4", "IPadAir4.jpg",
"589.89","San pham cua Lazada", "3.6cd","10.9 in", "24Mp","36Mp","IPad",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("IPad Pro 12", "IPadPro12.jpg",
"569.69","San pham cua CellPhoneZ", "1.01ld","10.9 in", "22Mp","34Mp","IPad",2, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("IPad Pro 11", "IPadPro11.jpg",
"540.44","San pham cua didongviet", "1.02ld","10.8 in", "20Mp","32Mp","IPad",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("IPad 7S", "IPad7.png",
"511.00","San pham cua CellPhoneZ", "2.5cd","10.7 in", "20Mp","30Mp","IPad",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("SamSung Galaxy S7", "SamsungTabS7.jpg",
"489.99","San pham cua CellPhoneZ", "1.4ld","10.9 in", "28Mp","36Mp","TSam",2, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("SamSung Galaxy S6", "samsungGtabS6.jpg",
"465.33","San pham cua thegioididong", "1.3ld","10.8 in", "26Mp","34Mp","TSam",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("SamSung Galaxy S4", "SamsungGtabS4.jpg",
"442.65","San pham cua Lazada", "1.2ld","10.8 in", "24Mp","32Mp","TSam",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("SamSung Galaxy T1", "samsungGalaxy.jpg",
"400.95","San pham cua Lazada", "1.2ld","10.9 in", "22Mp","30Mp","TSam",2, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("ZToptop Care S6", "ZtoptopCareS6.jpg",
"399.99","San pham cua CellPhoneZ", "1.4ld","10.8 in", "26Mp","36Mp","Tab1",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Tablet Care S4", "tabletCase.jpg",
"375.87","San pham cua didongviet", "1.3ld","10.7 in", "24Mp","34Mp","Tab1",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Lite Book S6", "s6litebook.jpg",
"369.69","San pham cua CellPhoneZ", "1.2ld","10.8 in", "24Mp","32Mp","Tab1",2, 2);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Tablet Asus Z", "tabletAsus.png",
"326.11","San pham cua Lazada", "1.1ld","10.7 in", "22Mp","30Mp","Tab1",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Lenovo Tab 3", "lenovoTab3.png",
"288.86","San pham cua thegioididong", "1.4ld","10.8 in", "24Mp","32Mp","Tab2",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Lenovo Hero", "lenovohero.png",
"279.98","San pham cua thegioididong", "1.3ld","10.7 in", "22Mp","30Mp","Tab2",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Mobell Tab 10", "mobellTab10.jpg",
"269.26","San pham cua thegioididong", "1.2ld","10.8 in", "24Mp","32Mp","Tab2",2, 1);
insert into product(product_name,product_avatar,product_price,product_description,product_screen_type,product_screen_size,
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("HuaWei Pad T1", "HuaWeiPadT1.png",
"255.15","San pham cua CellPhoneZ", "1.1ld","10.7 in", "20Mp","28Mp","Tab2",2, 2);
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

call  GetProductByPhone();



