-- CREATE TABLE vehiclebodytype (
--      vehicle_body_type_id int,
-- 		name varchar(255)
-- );

-- CREATE TABLE vehiclemodel (
--      vehicle_model_id int,
-- 		name varchar(255)
-- );

-- CREATE TABLE vehiclemake (
--      vehicle_make_id int, 
-- 		name varchar(255)
-- );

-- ****  Practice 2   ****

-- UPDATE vehicleTypes 
-- SET body_type =  CASE  
-- 					WHEN body_type = 'Car' THEN '1' 
-- 					WHEN body_type = 'Truck' THEN '2'
-- 					WHEN body_type = 'Van' THEN '3'
-- 					WHEN body_type = 'SUV' THEN '4'
-- 					ELSE null
--                  END ;
				 
-- UPDATE vehicleTypes 				 
-- SET      make = CASE  
-- 					WHEN make = 'Chevrolet' THEN '1' 
-- 					WHEN make = 'Mazda' THEN '2'
-- 					WHEN make = 'Nissan' THEN '3'
-- 					WHEN make = 'Ford' THEN '4'
-- 					WHEN make = 'Volkswagen' THEN '5'
-- 					ELSE null
-- 				  END ;
				  
-- UPDATE vehicleTypes 
-- SET     model =  CASE  
-- 					WHEN model = 'Corvette' THEN '1' 
-- 					WHEN model = 'Blazer' THEN '2'
-- 					WHEN model = 'Silverado' THEN '3'
-- 					WHEN model = 'MX-5 Miata' THEN '4'
-- 					WHEN model = 'CX-5' THEN '5'
-- 					WHEN model = 'CX-9' THEN '6' 
-- 					WHEN model = 'Maxima' THEN '7'
-- 					WHEN model = 'Altima' THEN '8'
-- 					WHEN model = 'Titan' THEN '9'
-- 					WHEN model = 'Fusion' THEN '10'
-- 					WHEN model = 'EcoSport' THEN '11'
-- 					WHEN model = 'F-250' THEN '12'
-- 					WHEN model = 'Beetle' THEN '13'
-- 					WHEN model = 'Passat' THEN '14'
-- 					WHEN model = 'Atlas' THEN '15'
-- 					WHEN model = 'Transit-150 Cargo' THEN '16'
-- 					ELSE null
-- 				 END ;
				 
-- ****    Practice 3    ****

-- alter table vehicletypes
-- alter column body_type type int using body_type::int,
-- alter column make type int using make::int,
-- alter column model type int using model::int;

-- ALTER TABLE vehiclemake
-- ADD PRIMARY KEY (vehicle_make_id);

-- ALTER TABLE vehiclemodel
-- ADD PRIMARY KEY (vehicle_model_id);

-- ALTER TABLE vehiclebodytype
-- ADD PRIMARY KEY (vehicle_body_type_id);


-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(1, 'Corvette');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(2, 'Blazer');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(3, 'Silverado');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(4, 'MX-5 Miata');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(5, 'CX-5');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(6, 'CX-9');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(7, 'Maxima');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(8, 'Altima');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(9, 'TitanAltima');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(10, 'Fusion');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(11, 'EcoSport');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(12, 'F-250');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(13, 'Beetle');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(14, 'Passat');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(15, 'Atlas');
-- INSERT INTO vehiclemodel(vehicle_model_id, name)
-- VALUES
-- 					(16, 'Transit-150 Cargo');



-- INSERT INTO vehiclemake(vehicle_make_id, name)
-- VALUES
--  					(1, 'Chevrolet');
-- INSERT INTO vehiclemake(vehicle_make_id, name)
-- VALUES
--  					(2, 'Mazda');
-- INSERT INTO vehiclemake(vehicle_make_id, name)
-- VALUES
--  					(3, 'Nissan');
-- INSERT INTO vehiclemake(vehicle_make_id, name)
-- VALUES
--  					(4, 'Ford');
-- INSERT INTO vehiclemake(vehicle_make_id, name)
-- VALUES
--  					(5, 'Volkswagen');
					


-- INSERT INTO vehiclebodytype(vehicle_body_type_id, name)
-- VALUES
--   					(1, 'Car');

-- INSERT INTO vehiclebodytype(vehicle_body_type_id, name)
-- VALUES
--   					(2, 'truck');

-- INSERT INTO vehiclebodytype(vehicle_body_type_id, name)
-- VALUES
--   					(3, 'Van');

-- INSERT INTO vehiclebodytype(vehicle_body_type_id, name)
-- VALUES
--   					(4, 'SUV');



-- DELETE FROM vehiclemodel
-- WHERE 
-- vehicle_model_id = 1;



-- ALTER TABLE vehicletypes 
-- ADD CONSTRAINT constraint_fk1
--    FOREIGN KEY (body_type) 
--    REFERENCES vehiclebodytype(vehicle_body_type_id);
   
-- ALTER TABLE vehicletypes 
-- ADD CONSTRAINT constraint_fk2
--    FOREIGN KEY (make) 
--    REFERENCES vehiclemake(vehicle_make_id);

-- ALTER TABLE vehicletypes 
-- ADD CONSTRAINT constraint_fk3
--    FOREIGN KEY (model) 
--    REFERENCES vehiclemodel(vehicle_model_id);