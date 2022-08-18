
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
product_front_camere,product_back_camera,product_producer,product_type,product_status) values("Iphone 15", "",
45.5,"San pham cua apple", "lcd","13 in", "5px","5px","Iphone",1, 1);

DELIMITER //
create procedure GetAllStaff()
begin
	select st.staff_name, st.phone_number, st.email, st.staff_address, st.gender, st.birthofday, r.role_name
	from QLBH.staff st
	join QLBH.staff_role sr on st.id=sr.staff_id
    join QLBH.roles r on sr.role_id=r.id;
end//
DELIMITER ;
call  GetAllStaff();

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

select p.product_name
from QLBH.product p



