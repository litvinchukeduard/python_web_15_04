INSERT INTO department (idDepartment, DepartmentCity, CountOfWorkers) VALUES (1, 'Kyiv', 12);
INSERT INTO department (idDepartment, DepartmentCity, CountOfWorkers) VALUES (2, 'Lviv', 15);
INSERT INTO department (idDepartment, DepartmentCity, CountOfWorkers) VALUES (3, 'Rivne', 8);
INSERT INTO department (idDepartment, DepartmentCity, CountOfWorkers) VALUES (4, 'Kyiv', 16);
INSERT INTO department (idDepartment, DepartmentCity, CountOfWorkers) VALUES (5, 'Lviv', 10);

INSERT INTO client (idClient, FirstName, LastName, Education, Passport, City, Age, Department_idDepartment) VALUES (1, 'Roman', 'Beregulak', 'high', 'KC249584', 'Lviv', '25', 2);
INSERT INTO client (idClient, FirstName, LastName, Education, Passport, City, Age, Department_idDepartment) VALUES (2, 'Mariya', 'Pehnyk', 'high', 'KC350156', 'Stryi', '29', 2);
INSERT INTO client (idClient, FirstName, LastName, Education, Passport, City, Age, Department_idDepartment) VALUES (3, 'Olena', 'Fedychkanych', 'middle', 'KC850145', 'Krasne', '19', 1);
INSERT INTO client (idClient, FirstName, LastName, Education, Passport, City, Age, Department_idDepartment) VALUES (4, 'Igor', 'Petriv', 'technic', 'KC853952', 'Kyiv', '21', 4);
INSERT INTO client (idClient, FirstName, LastName, Education, Passport, City, Age, Department_idDepartment) VALUES (5, 'Volodymyr', 'Gryniv', 'high', 'KC849153', 'Skvyra', '35', 4);
INSERT INTO client (idClient, FirstName, LastName, Education, Passport, City, Age, Department_idDepartment) VALUES (6, 'Oleg', 'Fedyshyn', 'high', 'KC012412', 'Lviv', '42', 5);
INSERT INTO client (idClient, FirstName, LastName, Education, Passport, City, Age, Department_idDepartment) VALUES (7, 'Taras', 'Sobko', 'middle', 'KC249504', 'Rivne', '20', 3);
INSERT INTO client (idClient, FirstName, LastName, Education, Passport, City, Age, Department_idDepartment) VALUES (8, 'Viktor', 'Spas', 'technic', 'KC823412', 'Kyiv', '22', 2);
INSERT INTO client (idClient, FirstName, LastName, Education, Passport, City, Age, Department_idDepartment) VALUES (9, 'Julia', 'Mokina', 'technic', 'KC908295', 'Kyiv', '21', 1);
INSERT INTO client (idClient, FirstName, LastName, Education, Passport, City, Age, Department_idDepartment) VALUES (10, 'Oksana', 'Indusiva', 'high', 'KC723532', 'Sambir', '32', 1);


INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (1, 4000, 'Returned', 'Dollar', 1);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (2, 5000, 'Not returned', 'Dollar', 4);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (3, 7500, 'Returned', 'Euro', 6);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (4, 3200, 'Not returned', 'Gryvnia', 2);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (5, 3700, 'Returned', 'Gryvnia', 3);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (6, 4100, 'Returned', 'Dollar', 1);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (7, 15100, 'Not returned', 'Gryvnia', 9);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (8, 25600, 'Not returned', 'Dollar', 10);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (9, 12300, 'Not returned', 'Gryvnia', 8);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (10, 9700, 'Returned', 'Dollar', 5);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (11, 9000, 'Not returned', 'Gryvnia', 7);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (12, 8100, 'Not returned', 'Dollar', 3);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (13, 4400, 'Not returned', 'Euro', 8);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (14, 2700, 'Returned', 'Dollar', 10);
INSERT INTO application (idApplication, Sum, CreditState, Currency, Client_idClient) VALUES (15, 6600, 'Not returned', 'Euro', 3);

