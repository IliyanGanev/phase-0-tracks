# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


#Release 0:Add Routes
# write a route that displays an address
get '/contact/:address' do
  address = params[:address]
  "The address is #{address}."
end


#Write a route that takes a name as a query parameter.
get '/great_job/' do
  name = params[:name]
  p params
  if name
    "Good job #{name}"
  else
    "Good job!"
  end
end


#Make a route that takes two numbers as parameters adds them and responds with the result.
get '/:first_number/plus/:second_number' do
  result = params[:first_number].to_i + params[:second_number].to_i
  "The result is #{result}."
end


#Make a route that allows the user to search the database in some way.
get '/search/:name' do
  name = params[:name]
  student = db.execute("SELECT * FROM students WHERE name=?", [name])[0]
  if student == nil
    "No such student in the database!"
  else
    response = ""
    response << "ID: #{student['id']}<br>"
    response << "Name:#{student['name']}<br>"
    response << "Age:#{student['age']}<br>"
    response << "Campus:#{student['campus']}"
    response
  end
end




