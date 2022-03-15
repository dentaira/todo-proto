INSERT INTO users(id, email, name, password, role) VALUES(gen_random_uuid(), 'local@example.com', 'denden', 'password', 'USER');
COMMIT;
