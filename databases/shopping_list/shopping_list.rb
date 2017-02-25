require "sqlite3"

db = SQLite3::Database.new("items.db")
db.results_as_hash = true

