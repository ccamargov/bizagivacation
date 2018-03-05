# bizagivacation
Application that manages the requests made by a mobile application, whose main objective is to manage the vacation requests of the employees of the company.

## Instructions

1. Install Ruby 2.x and Rails 4.x
2. Clone or download the code contained in this repository.
3. Execute **bundle install** to install gems dependecies.
4. Execute **bundle exec rake db:migrate** to create the database tables.
5. Execute **bundle exec rake db:seed** to populate the tables with default records.
6. Execute **rails s --binding='0.0.0.0' -p [OWN_PORT]** to run de server. (The configuration that you are using here, must be the same configuration of constants in the Mobile application - https://github.com/ccamargov/bizagivacationapp).

## Features

The application has 3 main features:

1. API to log in from the mobile application (POST REQUEST).
2. API to get all vacations request's (GET REQUEST).
3. API to update vacation request status: Approved, Rejected or Pending (POST REQUEST).
