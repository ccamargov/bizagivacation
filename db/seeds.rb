# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# Populate User table
User.create(:email => "employee1@example.com", :first_name => "Alberto", :last_name => "Ramirez", :password => "123456")
User.create(:email => "employee2@example.com", :first_name => "Jorge", :last_name => "Florez", :password => "123456")
User.create(:email => "employee3@example.com", :first_name => "camilo", :last_name => "Camargo", :password => "123456")
