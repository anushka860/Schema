
-- Task 2: Data Insertion and Handling Nulls

-- 1. Create the employees table
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT DEFAULT 'Unassigned',
    salary INTEGER,
    bonus INTEGER
);

-- 2. Insert data

-- Normal row
INSERT INTO employees (id, name, department, salary, bonus)
VALUES (1, 'Anushka', 'HR', 30000, 2000);

-- Using NULL
INSERT INTO employees (id, name, salary, bonus)
VALUES (2, 'Ravi', 25000, NULL);

-- Using DEFAULT
INSERT INTO employees (id, name, department, salary, bonus)
VALUES (3, 'Neha', DEFAULT, 28000, 1500);

-- 3. Update data

-- Update a single row
UPDATE employees
SET bonus = 3000
WHERE id = 1;

-- Update multiple rows
UPDATE employees
SET department = 'Finance'
WHERE department IS NULL OR department = 'Unassigned';

-- 4. Delete data

-- Delete specific employee
DELETE FROM employees
WHERE id = 3;

-- Delete rows with NULL bonuses
DELETE FROM employees
WHERE bonus IS NULL;
