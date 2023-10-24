create table Suppliers (
	supplier_id INT PRIMARY KEY,
	Name VARCHAR(18),
	ContactPerson VARCHAR(50),
	Phone VARCHAR(50)
);
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (1, 'Nike', 'Merrilee Stimson', '983-333-7373');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (2, 'Adidas', 'Grazia Challicombe', '017-607-5883');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (3, 'Under Armour', 'Ebonee Spoward', '699-878-9124');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (4, 'Puma', 'Haslett Triplett', '295-173-1750');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (5, 'Reebok', 'Elbertina Deans', '575-605-7088');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (6, 'New Balance', 'Berny Deny', '908-675-1143');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (7, 'Mizuno', 'Pierson Taggert', '365-672-0290');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (8, 'Wilson', 'Kit Breslau', '393-303-2647');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (9, 'Rawlings', 'Shep Abrahamowitcz', '474-156-1877');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (10, 'Easton', 'Yulma Gouldbourn', '901-133-5716');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (11, 'Louisville Slugger', 'Terry Atrill', '948-114-7013');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (12, 'Spalding', 'Gabriela Hildrew', '891-721-4996');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (13, 'Everlast', 'Ilaire Truss', '754-897-7586');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (14, 'Champion', 'Terrill Wrankmore', '694-843-3094');
insert into Suppliers (supplier_id, Name, ContactPerson, Phone) values (15, 'Fila', 'Kaylyn Plumer', '759-678-5501');


create table Warehouse (
	warehouse_id INT PRIMARY KEY,
	Name VARCHAR(8),
	Location VARCHAR(50)
);
insert into Warehouse (warehouse_id, Name, Location) values (1, 'Athletic', 'Рыскулбекова 23');
insert into Warehouse (warehouse_id, Name, Location) values (2, 'Athletic', 'Мангилик Ел 53');
insert into Warehouse (warehouse_id, Name, Location) values (3, 'Athletic', 'Момышулы 13а');


create table ProductCategory (
	category_id INT PRIMARY KEY,
	CategoryName VARCHAR(19)
);
insert into ProductCategory (category_id, CategoryName) values (1, 'billiard');
insert into ProductCategory (category_id, CategoryName) values (2, 'tennis');
insert into ProductCategory (category_id, CategoryName) values (3, 'golf');
insert into ProductCategory (category_id, CategoryName) values (4, 'baseball');
insert into ProductCategory (category_id, CategoryName) values (5, 'archery');
insert into ProductCategory (category_id, CategoryName) values (6, 'skateboarding');
insert into ProductCategory (category_id, CategoryName) values (7, 'boxing');
insert into ProductCategory (category_id, CategoryName) values (8, 'table tennis');
insert into ProductCategory (category_id, CategoryName) values (9, 'surfboarding');
insert into ProductCategory (category_id, CategoryName) values (10, 'climbing ');
insert into ProductCategory (category_id, CategoryName) values (11, 'hockey');
insert into ProductCategory (category_id, CategoryName) values (12, 'hiking');
insert into ProductCategory (category_id, CategoryName) values (13, 'football');
insert into ProductCategory (category_id, CategoryName) values (14, 'badminton');
insert into ProductCategory (category_id, CategoryName) values (15, 'soccer');
insert into ProductCategory (category_id, CategoryName) values (16, 'camping');
insert into ProductCategory (category_id, CategoryName) values (17, 'lacrosse');
insert into ProductCategory (category_id, CategoryName) values (18, 'volleyball');
insert into ProductCategory (category_id, CategoryName) values (19, 'yoga');
insert into ProductCategory (category_id, CategoryName) values (20, 'accessories');


create table Products (
	product_id INT PRIMARY KEY,
	Name VARCHAR(50),
	Price DECIMAL(5,2),
	StockQuantity INT,
	Code VARCHAR(50),
	category_id INT,
	warehouse_id INT,
	supplier_id INT, 
	FOREIGN KEY(category_id) REFERENCES ProductCategory(category_id),
	FOREIGN KEY(warehouse_id) REFERENCES Warehouse(warehouse_id),
	FOREIGN KEY(supplier_id) REFERENCES Suppliers(supplier_id) 
);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (1, 'punching mitts', 35.04, 21, '49781-063', 7, 3, 7);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (2, 'sports armband', 41.65, 9, '65862-489', 20, 2, 9);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (3, 'waterproof phone case', 46.84, 27, '68306-104', 20, 3, 6);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (4, 'yoga mat', 35.42, 9, '0781-5249', 19, 3, 2);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (5, 'sports backpack', 46.16, 8, '41520-223', 20, 3, 2);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (6, 'hockey stick', 28.24, 22, '0378-2512', 11, 3, 12);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (7, 'hiking boots', 94.69, 16, '0603-4992', 12, 3, 14);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (8, 'skateboard', 19.43, 27, '23667-002', 6, 1, 15);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (9, 'waterproof phone case', 74.84, 16, '68421-5400', 20, 1, 4);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (10, 'sport bag', 87.41, 15, '52641-700', 20, 1, 5);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (11, 'ankle brace', 96.24, 9, '21695-068', 20, 2, 7);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (12, 'knee pads', 95.53, 15, '10237-645', 20, 3, 5);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (13, 'climbing harness', 79.25, 3, '43406-0022', 10, 3, 11);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (14, 'lacrosse stick', 94.82, 18, '43063-204', 17, 1, 12);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (15, 'soccer ball', 93.87, 11, '43742-0175', 15, 2, 13);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (16, 'billiards balls', 68.28, 22, '0941-0433', 1, 3, 2);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (17, 'baseball glove', 66.61, 20, '51270-114', 4, 2, 7);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (18, 'pool cue', 96.68, 21, '57479-101', 1, 2, 7);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (19, 'baseball bat', 98.43, 14, '13537-221', 4, 1, 4);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (20, 'skateboard', 95.74, 4, '0409-2287', 6, 2, 7);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (21, 'football', 94.26, 26, '58503-006', 13, 3, 14);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (22, 'tennis shoes', 66.71, 30, '63739-437', 2, 2, 11);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (23, 'sports visor', 64.48, 28, '21695-105', 20, 2, 7);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (24, 'camping tent', 20.05, 23, '0363-0096', 16, 2, 3);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (25, 'sports armband', 50.29, 26, '41250-027', 20, 1, 7);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (26, 'fishing rod', 47.48, 30, '60681-8002', 16, 1, 10);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (27, 'knee pads', 95.1, 11, '65162-528', 20, 2, 5);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (28, 'volleyball', 56.81, 23, '11673-804', 18, 2, 13);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (29, 'baseball glove', 67.75, 15, '0363-0098', 4, 1, 10);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (30, 'hockey stick', 65.86, 29, '37000-251', 11, 2, 3);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (31, 'billiards balls', 21.02, 6, '55154-0727', 1, 2, 2);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (32, 'sports visor', 48.55, 30, '37012-333', 20, 1, 6);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (33, 'badminton racket', 51.51, 12, '52959-776', 14, 2, 10);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (34, 'sports visor', 53.38, 11, '57955-1840', 20, 2, 7);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (35, 'sports watch', 43.97, 24, '67457-216', 20, 1, 12);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (36, 'billiards balls', 95.07, 10, '43353-821', 1, 2, 5);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (37, 'lacrosse stick', 71.82, 15, '11822-0141', 17, 2, 2);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (38, 'soccer ball', 17.81, 24, '60660-7786', 15, 2, 13);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (39, 'golf balls', 95.33, 24, '49288-0106', 3, 1, 13);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (40, 'volleyball', 28.29, 28, '68745-2017', 18, 2, 12);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (41, 'sports visor', 59.35, 29, '0093-6903', 20, 3, 8);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (42, 'stopwatch', 46.4, 16, '54868-2134', 20, 1, 9);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (43, 'hockey stick', 43.2, 5, '19392-130', 11, 3, 5);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (44, 'yoga mat', 87.59, 24, '49349-881', 19, 1, 2);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (45, 'sports visor', 50.41, 11, '43269-561', 20, 1, 11);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (46, 'sport bag', 54.57, 17, '67544-236', 20, 1, 7);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (47, 'tennis racket', 27.14, 23, '16590-276', 2, 3, 2);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (48, 'bow and arrow', 75.88, 23, '33992-4250', 5, 2, 6);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (49, 'sports jersey', 52.2, 11, '64942-1237', 20, 3, 12);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (50, 'fishing rod', 42.04, 30, '63187-121', 16, 3, 1);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (51, 'fitness tracker', 53.73, 27, '55319-014', 20, 2, 2);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (52, 'boxing punching bag', 14.12, 14, '55301-478', 7, 1, 4);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (53, 'cooling towel', 70.41, 7, '57424-141', 20, 2, 14);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (54, 'bow and arrow', 61.2, 28, '12462-503', 5, 3, 10);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (55, 'team cap', 62.69, 4, '55312-521', 20, 3, 13);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (56, 'table tennis table', 47.32, 14, '42291-627', 8, 1, 13);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (57, 'parachute', 13.22, 9, '49715-014', 20, 1, 15);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (58, 'medicine ball', 25.4, 30, '59779-374', 20, 2, 7);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (59, 'jump rope', 16.22, 22, '63629-3767', 20, 1, 3);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (60, 'sports sunglasses', 83.67, 25, '59667-0032', 20, 3, 11);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (61, 'knee pads', 47.18, 7, '37000-205', 20, 2, 11);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (62, 'sports jersey', 98.19, 22, '0409-4051', 20, 3, 3);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (63, 'tennis racket', 53.99, 29, '63941-945', 2, 2, 14);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (64, 'hiking boots', 50.38, 24, '51393-4006', 12, 3, 13);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (65, 'knee pads', 71.33, 2, '51393-6446', 20, 3, 8);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (66, 'boxing punching bag', 26.31, 17, '63868-144', 7, 2, 14);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (67, 'surfboard', 16.04, 28, '52125-747', 9, 2, 1);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (68, 'knee pads', 87.62, 21, '58194-012', 20, 2, 9);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (69, 'volleyball', 55.56, 14, '0224-1860', 18, 3, 11);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (70, 'skateboard helmet', 77.57, 1, '52533-024', 6, 3, 2);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (71, 'badminton racket', 40.56, 15, '58223-517', 14, 3, 15);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (72, 'sports visor', 81.17, 8, '51523-026', 20, 2, 13);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (73, 'volleyball', 91.09, 7, '0591-2882', 18, 2, 7);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (74, 'bicycle helmet', 13.94, 29, '68788-9021', 12, 3, 3);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (75, 'tennis racket', 65.52, 7, '63868-338', 20, 3, 8);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (76, 'exercise mat', 34.55, 20, '63029-662', 19, 3, 10);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (77, 'balance board', 27.13, 20, '55910-588', 19, 3, 5);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (78, 'volleyball', 13.76, 5, '37012-035', 18, 2, 8);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (79, 'wrist sweatbands', 56.15, 21, '0409-2053', 20, 3, 12);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (80, 'volleyball', 45.44, 11, '55154-9401', 18, 2, 3);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (81, 'team cap', 18.61, 7, '10191-1225', 20, 3, 2);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (82, 'sports headphones', 33.27, 5, '54868-4255', 20, 2, 1);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (83, 'billiards balls', 18.95, 29, '36800-150', 1, 1, 12);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (84, 'sports armband', 66.67, 30, '59630-820', 20, 2, 11);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (85, 'rowing machine', 73.41, 23, '69154-050', 20, 2, 11);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (86, 'sports headphones', 75.63, 4, '68788-9006', 20, 3, 1);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (87, 'sports visor', 45.07, 29, '23594-915', 20, 2, 6);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (88, 'fitness tracker', 47.8, 23, '76151-251', 20, 1, 3);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (89, 'soccer ball', 74.34, 24, '66348-4105', 15, 2, 10);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (90, 'gym bag', 48.54, 22, '64725-2434', 20, 2, 5);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (91, 'rowing machine', 69.24, 1, '0143-9725', 20, 1, 3);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (92, 'gym towel', 30.37, 29, '49288-0948', 20, 2, 4);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (93, 'sports headphones', 88.34, 30, '65162-555', 20, 1, 8);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (94, 'knee-high socks', 67.12, 21, '55154-4762', 20, 2, 11);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (95, 'ping pong paddle', 98.3, 29, '53187-480', 20, 3, 8);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (96, 'weightlifting belt', 68.72, 22, '54748-302', 19, 3, 10);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (97, 'boxing punching bag', 84.98, 1, '76485-1005', 7, 2, 10);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (98, 'gym towel', 61.38, 15, '43742-0072', 20, 2, 13);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (99, 'sports visor', 57.57, 15, '42865-300', 20, 1, 11);
insert into Products (product_id, Name, Price, StockQuantity, Code, category_id, warehouse_id, supplier_id) values (100, 'treadmill', 22.61, 10, '60681-2505', 20, 2, 2);



create table Supply (
	supply_id INT PRIMARY KEY,
	Quantity INT,
	SupplyDate DATE,
	product_id INT,
	warehouse_id INT,
	supplier_id INT,
	FOREIGN KEY(product_id) REFERENCES Products(product_id),
	FOREIGN KEY(warehouse_id) REFERENCES Warehouse(warehouse_id),
	FOREIGN KEY(supplier_id) REFERENCES Suppliers(supplier_id)
);
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (1, 32, 7, 1, 16, '26/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (2, 100, 8, 1, 20, '01/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (3, 52, 1, 1, 4, '07/03/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (4, 13, 8, 1, 23, '21/05/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (5, 37, 1, 2, 5, '01/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (6, 90, 7, 2, 24, '07/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (7, 90, 7, 2, 14, '29/03/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (8, 74, 15, 3, 27, '25/08/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (9, 32, 8, 2, 1, '16/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (10, 50, 5, 1, 28, '27/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (11, 76, 9, 1, 12, '08/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (12, 8, 10, 3, 28, '05/10/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (13, 87, 7, 3, 9, '16/09/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (14, 85, 6, 1, 1, '03/06/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (15, 53, 11, 3, 12, '24/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (16, 58, 12, 2, 1, '14/01/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (17, 17, 3, 3, 28, '09/05/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (18, 33, 15, 2, 20, '12/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (19, 23, 11, 3, 6, '20/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (20, 35, 8, 1, 20, '14/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (21, 78, 10, 2, 26, '22/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (22, 25, 11, 1, 11, '23/06/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (23, 59, 6, 3, 15, '28/01/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (24, 62, 10, 2, 8, '15/06/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (25, 100, 6, 3, 16, '17/08/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (26, 97, 13, 2, 19, '02/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (27, 54, 11, 2, 1, '15/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (28, 41, 7, 2, 13, '14/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (29, 86, 8, 3, 26, '17/01/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (30, 23, 13, 3, 26, '23/09/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (31, 52, 5, 3, 27, '25/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (32, 94, 2, 1, 5, '13/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (33, 45, 5, 2, 28, '30/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (34, 26, 11, 1, 2, '11/03/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (35, 30, 1, 2, 15, '09/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (36, 77, 3, 2, 30, '09/10/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (37, 21, 4, 1, 21, '23/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (38, 38, 1, 1, 18, '16/06/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (39, 91, 3, 1, 17, '12/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (40, 88, 5, 1, 10, '23/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (41, 73, 15, 2, 12, '14/06/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (42, 19, 13, 2, 28, '22/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (43, 93, 12, 3, 5, '05/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (44, 27, 10, 1, 5, '15/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (45, 94, 9, 1, 14, '18/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (46, 32, 4, 1, 29, '31/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (47, 43, 7, 3, 17, '28/05/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (48, 61, 6, 2, 17, '16/06/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (49, 87, 3, 2, 13, '27/03/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (50, 31, 3, 2, 13, '20/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (51, 27, 13, 3, 20, '07/03/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (52, 91, 15, 2, 9, '06/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (53, 59, 15, 1, 11, '29/01/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (54, 50, 2, 2, 14, '16/10/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (55, 28, 9, 2, 21, '02/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (56, 100, 13, 3, 7, '24/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (57, 73, 2, 1, 3, '02/08/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (58, 82, 15, 2, 19, '26/01/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (59, 96, 8, 1, 16, '10/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (60, 39, 6, 1, 27, '16/01/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (61, 81, 1, 1, 6, '16/01/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (62, 71, 7, 3, 12, '11/08/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (63, 53, 9, 2, 27, '03/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (64, 25, 1, 1, 5, '05/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (65, 35, 4, 1, 21, '21/08/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (66, 100, 12, 1, 3, '15/09/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (67, 34, 13, 2, 10, '16/10/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (68, 31, 10, 1, 15, '10/01/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (69, 64, 12, 3, 18, '11/06/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (70, 85, 12, 2, 8, '07/08/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (71, 50, 15, 1, 29, '02/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (72, 51, 8, 1, 3, '22/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (73, 88, 15, 1, 2, '28/05/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (74, 80, 2, 3, 25, '20/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (75, 58, 6, 2, 11, '26/06/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (76, 89, 8, 3, 14, '19/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (77, 61, 13, 3, 6, '08/01/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (78, 73, 3, 1, 16, '19/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (79, 34, 1, 2, 26, '30/06/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (80, 46, 13, 3, 3, '03/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (81, 89, 6, 2, 2, '19/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (82, 18, 2, 2, 15, '13/08/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (83, 28, 14, 3, 27, '25/03/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (84, 52, 2, 3, 5, '08/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (85, 25, 9, 3, 7, '14/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (86, 88, 13, 1, 23, '28/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (87, 14, 6, 2, 28, '19/08/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (88, 82, 6, 1, 27, '11/05/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (89, 94, 5, 2, 17, '05/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (90, 66, 10, 1, 7, '20/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (91, 43, 2, 3, 4, '28/04/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (92, 94, 11, 3, 9, '10/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (93, 14, 4, 2, 22, '25/07/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (94, 52, 1, 2, 19, '19/01/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (95, 51, 10, 2, 11, '10/01/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (96, 81, 9, 3, 7, '29/09/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (97, 22, 4, 2, 30, '21/06/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (98, 29, 3, 1, 24, '12/10/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (99, 98, 13, 1, 19, '11/02/2023');
insert into Supply (supply_id, product_id, supplier_id, warehouse_id, Quantity, SupplyDate) values (100, 47, 2, 3, 8, '28/04/2023');
