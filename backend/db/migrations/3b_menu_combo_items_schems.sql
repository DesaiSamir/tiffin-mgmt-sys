CREATE TABLE IF NOT EXISTS menu_combo_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    combo_id INT NOT NULL,
    item_id INT NOT NULL,
    FOREIGN KEY (combo_id) REFERENCES menu_combos(id),
    FOREIGN KEY (item_id) REFERENCES menu_items(id)
);