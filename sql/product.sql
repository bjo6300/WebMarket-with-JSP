use WebMarketDB;

create table if not exists product(
	p_id varchar(10) not null,
	p_name varchar(20),
	p_unitPrice integer,
	p_description TEXT,
	p_category varchar(20),
	p_manufacturer varchar(20),
	p_unitsInStock long,
	p_condition varchar(20),
	p_fileName varchar(20),
	primary key (p_id)
)default charset=utf8;

delete from product;

insert into product values('P1234', 'iPhone 6s', 800000, '1334X750 Retina HD Display, 8-megapixel iSight Camera', 'Smart Phone', 'Apple', 1000, 'new', 'P1234.png');

insert into product values('P1235', 'LG PC gram', 1500000, '3.3-inch, IPS LED display, 5rd Generation Intel Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png'); 

insert into product values('P1236', 'GalaxyTab S', 900000, '3.3-inch, 212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

desc product;

