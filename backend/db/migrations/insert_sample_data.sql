-- Insert Tenant
INSERT INTO tenants (name, created_at) VALUES ('Indian Tiffin', NOW());

-- Insert Users
INSERT INTO users (tenant_id, username, email, password, created_at, updated_at) VALUES
(1, 'john_doe', 'john@example.com', 'password123', NOW(), NOW()),
(1, 'jane_smith', 'jane@example.com', 'password456', NOW(), NOW());

-- Insert Orders
INSERT INTO orders (tenant_id, user_id, total_amount, status, created_at, updated_at) VALUES
(1, 1, 25.00, 'completed', NOW(), NOW()),
(1, 2, 35.00, 'pending', NOW(), NOW());

-- Insert Menu Items
INSERT INTO menu_items (tenant_id, name, description, price, category, created_at, updated_at) VALUES
(1, 'Chicken Curry', 'Spicy chicken curry with Indian spices', 12.99, 'Main Course', NOW(), NOW()),
(1, 'Paneer Tikka', 'Grilled cottage cheese with tangy sauce', 10.99, 'Appetizer', NOW(), NOW()),
(1, 'Naan Bread', 'Traditional Indian flatbread', 2.99, 'Bread', NOW(), NOW());

-- Insert Menu Combos
INSERT INTO menu_combos (tenant_id, name, description, price)
VALUES
    (1, 'Combo 1', 'Combo with appetizer, main course, and dessert', 25.99),
    (1, 'Combo 2', 'Combo with soup, salad, and drink', 15.99),
    (1, 'Combo 3', 'Combo with burger, fries, and drink', 12.99);

-- Insert Menu Combo Items
INSERT INTO menu_combo_items (combo_id, item_id)
VALUES
    (1, 1), -- Combo 1 includes menu item with ID 1
    (1, 2), -- Combo 1 includes menu item with ID 2
    (1, 3), -- Combo 1 includes menu item with ID 3
    (2, 4), -- Combo 2 includes menu item with ID 4
    (2, 5), -- Combo 2 includes menu item with ID 5
    (2, 6), -- Combo 2 includes menu item with ID 6
    (3, 7), -- Combo 3 includes menu item with ID 7
    (3, 8), -- Combo 3 includes menu item with ID 8
    (3, 9); -- Combo 3 includes menu item with ID 9
    
-- Insert Inventory Items
INSERT INTO inventory_items (tenant_id, name, quantity, unit, created_at, updated_at) VALUES
(1, 'Chicken', 50, 'kg', NOW(), NOW()),
(1, 'Paneer', 20, 'kg', NOW(), NOW()),
(1, 'Flour', 100, 'kg', NOW(), NOW());

-- Insert Feedback
INSERT INTO feedback (tenant_id, user_id, message, rating, created_at, updated_at) VALUES
(1, 1, 'Great food and service!', 5, NOW(), NOW()),
(1, 2, 'The food was okay, but the service could be better.', 3, NOW(), NOW());

-- Insert Payments
INSERT INTO payments (tenant_id, order_id, amount, status, created_at, updated_at) VALUES
(1, 1, 25.00, 'success', NOW(), NOW()),
(1, 2, 35.00, 'pending', NOW(), NOW());

-- Insert Logs (Optional)
INSERT INTO logs (tenant_id, level, message, created_at) VALUES
(1, 'INFO', 'Order placed successfully', NOW()),
(1, 'ERROR', 'Failed to process payment', NOW());

-- Display Success Message
SELECT 'Sample Data Inserted Successfully';
