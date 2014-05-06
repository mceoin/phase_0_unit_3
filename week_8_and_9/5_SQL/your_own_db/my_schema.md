fred (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    email VARCHAR(128) UNIQUE NOT NULL,
    phone_number VARCHAR(10) UNIQUE NOT NULL,
    location VARCHAR(64) NOT NULL, 
    last_logged_in TIMESTAMP, 
    friends VARCHAR(64) NOT NULL) 
    ;