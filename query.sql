-- Create a table if it does not exist
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO users (name, email, age) VALUES
('Alice Johnson', 'alice@example.com', 25),
('Bob Smith', 'bob@example.com', 30),
('Charlie Brown', 'charlie@example.com', 28)
ON CONFLICT (email) DO NOTHING;

-- Update data
UPDATE users SET age = 26 WHERE email = 'alice@example.com';

-- Select all data for verification
SELECT * FROM users;
