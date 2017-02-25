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

items = db.execute("SELECT * FROM items")

def add_item(db, name, quantity)
	db.execute("INSERT INTO items (name, quantity) VALUES (?, ?)", [name, quantity])
end

#add_item(db, "shoes", 2)

def update_item(db, name, quantity, id)
	db.execute("UPDATE items SET name=?, quantity=? WHERE id=?", [name, quantity, id])
end

#update_item(db, "tie", 1, 1)

def delete_item(db, name)
	db.execute("DELETE FROM items WHERE name=?", [name])
end

#delete_item(db, "tie")

def clear_table(db)
	db.execute("DELETE FROM items")
end

#clear_table(db)

def print_items(items)
	items.each do |item|
		puts "item#{item["id"]}: |#{item["name"]}| quantity:#{item["quantity"]}"
	end	
end

print_items(items)







