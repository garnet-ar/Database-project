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

ALTER TABLE Suppliers
ADD COLUMN warehouse_id INT;

ALTER TABLE Suppliers
ADD CONSTRAINT fk_suppliers_warehouse
    FOREIGN KEY (warehouse_id)
    REFERENCES Warehouse(warehouse_id);

create table Supply (
	supply_id INT PRIMARY KEY,
	Quantity INT,
	SupplyDate DATE
);
insert into Supply (supply_id, Quantity, SupplyDate) values (1, 14, '31/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (2, 14, '23/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (3, 9, '05/09/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (4, 12, '03/07/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (5, 13, '12/10/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (6, 11, '14/06/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (7, 4, '20/06/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (8, 26, '09/10/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (9, 20, '05/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (10, 16, '05/07/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (11, 27, '27/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (12, 20, '24/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (13, 25, '08/06/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (14, 26, '14/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (15, 17, '18/06/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (16, 6, '28/06/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (17, 27, '17/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (18, 4, '11/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (19, 20, '05/04/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (20, 14, '27/06/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (21, 2, '01/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (22, 10, '14/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (23, 10, '16/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (24, 10, '13/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (25, 24, '05/01/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (26, 22, '23/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (27, 25, '17/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (28, 3, '10/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (29, 3, '15/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (30, 10, '18/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (31, 28, '29/01/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (32, 17, '20/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (33, 12, '10/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (34, 15, '28/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (35, 10, '15/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (36, 21, '03/01/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (37, 9, '01/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (38, 16, '02/09/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (39, 13, '14/04/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (40, 6, '01/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (41, 14, '16/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (42, 19, '15/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (43, 15, '03/10/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (44, 13, '09/04/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (45, 2, '07/06/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (46, 29, '11/07/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (47, 6, '20/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (48, 16, '30/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (49, 30, '10/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (50, 11, '22/04/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (51, 4, '01/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (52, 26, '22/04/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (53, 7, '16/09/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (54, 9, '16/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (55, 19, '06/10/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (56, 17, '26/01/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (57, 15, '13/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (58, 5, '09/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (59, 9, '05/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (60, 15, '15/10/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (61, 30, '03/06/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (62, 16, '31/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (63, 20, '20/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (64, 6, '10/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (65, 19, '26/07/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (66, 6, '21/07/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (67, 20, '12/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (68, 28, '23/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (69, 25, '24/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (70, 7, '07/06/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (71, 24, '10/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (72, 21, '11/06/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (73, 29, '29/07/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (74, 12, '27/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (75, 28, '23/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (76, 25, '26/06/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (77, 5, '02/07/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (78, 15, '05/07/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (79, 11, '19/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (80, 10, '23/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (81, 5, '26/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (82, 8, '13/07/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (83, 20, '24/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (84, 2, '29/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (85, 8, '02/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (86, 4, '10/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (87, 10, '07/10/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (88, 12, '16/10/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (89, 22, '25/09/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (90, 25, '30/03/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (91, 8, '22/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (92, 30, '30/05/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (93, 11, '05/09/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (94, 19, '21/07/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (95, 7, '26/07/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (96, 10, '24/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (97, 18, '13/08/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (98, 1, '03/02/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (99, 4, '12/09/2023');
insert into Supply (supply_id, Quantity, SupplyDate) values (100, 19, '02/06/2023');


SELECT * FROM Supply