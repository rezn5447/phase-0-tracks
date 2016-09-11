# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  name = params[:name]
  age = params[:age]
  if name && age
  	"#{params[:name]} is #{params[:age]} years old."
  else
  	"Hey there new person!"
  end
end

get '/contact' do
  "The Address to contact us is at 555 Milbourne Rd."
end

get '/great_job' do
  p_name = params[:p_name]
  if p_name
	"Good job, #{params[:p_name]}!"
  else
  	"Good job!"
  end
end
# write a GET route with
# route parameters

get '/:num1/plus/:num2' do
  result = (params[:num1].to_i + params[:num2].to_i)
  "The result of #{params[:num1]} and #{params[:num2]} is #{result}"
end





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