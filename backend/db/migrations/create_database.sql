-- Create Database
CREATE DATABASE IF NOT EXISTS restaurant_management_system;

-- Use the Database
USE restaurant_management_system;

-- Create Tenants Table
SOURCE db/migrations/0_tenants_schema.sql;

-- Create Users Table
SOURCE db/migrations/1_users_schema.sql;

-- Create Orders Table
SOURCE db/migrations/2_orders_schema.sql;

-- Create Menu Items Table
SOURCE db/migrations/3_menu_items_schema.sql;

-- Create Inventory Items Table
SOURCE db/migrations/4_inventory_items_schema.sql;

-- Create Roles Table (Optional for User Management)
SOURCE db/migrations/5_roles_schema.sql;

-- Create User Roles Table (Optional for User Management)
SOURCE db/migrations/6_user_roles_schema.sql;

-- Create Logs Table
SOURCE db/migrations/7_logs_schema.sql;

-- Create Payments Table
SOURCE db/migrations/8_payments_schema.sql;

-- Create Feedback Table
SOURCE db/migrations/9_feedback_schema.sql;

-- Additional Tables can be added here

-- Display Success Message
SELECT 'Database and Tables Created Successfully';
