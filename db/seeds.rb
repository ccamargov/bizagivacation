# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# Populate User table
if User.count == 0
  User.create(:email => "employee1@example.com", :first_name => "Alberto", :last_name => "Ramirez", :password => "123456")
  User.create(:email => "employee2@example.com", :first_name => "Jorge", :last_name => "Florez", :password => "123456")
  User.create(:email => "employee3@example.com", :first_name => "camilo", :last_name => "Camargo", :password => "123456")
end

# Populate Vacations Request's
if RequestVacation.count == 0
  RequestVacation.create(:process => "Vacations", :activity => "Approval", :request_date => "2013-03-01", :employee => "Andres Iniesta", :begin_date => "2013-12-23", :end_date => "2014-01-03", :last_vacation_on => "2013-01-03")
  RequestVacation.create(:process => "Vacations", :activity => "Approval", :request_date => "2013-01-17", :employee => "Xavi Hernandez", :begin_date => "2013-12-23", :end_date => "2013-12-24", :last_vacation_on => "2012-06-01")
  RequestVacation.create(:process => "Vacations", :activity => "Approval", :request_date => "2013-03-02", :employee => "Sergio Busquets", :begin_date => "2013-12-23", :end_date => "2013-12-26", :last_vacation_on => "2012-07-01")
  RequestVacation.create(:process => "Vacations", :activity => "Approval", :request_date => "2013-02-25", :employee => "Carles Puyol", :begin_date => "2013-12-23", :end_date => "2013-12-27", :last_vacation_on => "2012-08-01")
  RequestVacation.create(:process => "Vacations", :activity => "Approval", :request_date => "2013-02-28", :employee => "Francesc Fabregas", :begin_date => "2013-12-23", :end_date => "2014-01-02", :last_vacation_on => "2012-09-01")
end
