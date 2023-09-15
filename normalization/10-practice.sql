-- DROP TABLE projects;
-- DROP TABLE company_buildings;
-- DROP TABLE projects_employees;
-- DROP TABLE teams;
-- DROP TABLE employees;
-- DROP TABLE internet_accounts;

CREATE TABLE projects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(300) NOT NULL,
    deadline DATE
);

CREATE TABLE company_buildings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL,
    building_id INT REFERENCES company_buildings ON DELETE SET NULL
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);

CREATE TABLE internet_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);

-- intermediate table => n:m
CREATE TABLE projects_employees (
    project_id INT REFERENCES projects ON DELETE CASCADE,
    employee_id INT REFERENCES employees ON DELETE CASCADE,
    PRIMARY KEY (project_id, employee_id),
);

