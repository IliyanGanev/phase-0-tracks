require "sqlite3"

db = SQLite3::Database.new("items.db")
db.results_as_hash = true

create_table = <<-SQL
CREATE TABLE IF NOT EXISTS items(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
quantity INT 
)
SQL

db.execute(create_table)

def add_item(db, name, quantity)
	db.execute("INSERT INTO items (name, quantity) VALUES (?, ?)", [name, quantity])
end

add_item(db, "shirt", 1)	