CREATE TABLE employers (
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    -- yearly_revenue FLOAT(5,2) -- 123.12(o), 12.1(o), 1234.12(x) 1.234(x)
    yearly_revenue NUMERIC(5,2), -- 123.12(o), 12.1(x), 1234.12(x) 1.234(x)
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversation (
    user_name VARCHAR(200),
    employer_name VARCHAR(250),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);