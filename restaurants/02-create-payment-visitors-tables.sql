CREATE TABLE IF NOT EXISTS payment_methods (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    name VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS tables (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    num_seats INT,
    category VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS bookings (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    booking_date DATE NOT NULL,
    num_guests INT NOT NULL,
    amount_billed NUMERIC(6, 2)  NOT NULL,
    amount_tipped NUMERIC(6, 2),
    payment_id INT REFERENCES payment_methods,
    table_id INT REFERENCES tables
);