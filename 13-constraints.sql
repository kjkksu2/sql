ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
MODIFY COLUMN current_status ENUM('employed', "self-employed", "unemployed") NOT NULL;

ALTER TABLE employers
ALTER COLUMN company_name SET NOT NULL,
ALTER COLUMN yearly_revenue SET NOT NULL;