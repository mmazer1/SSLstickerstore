# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
1. Install wsl: https://learn.microsoft.com/en-us/windows/wsl/install
2. git clone repo
3. mise install ruby@3.4.5
4. bundle install
5. Download mysql here:https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-database
6. Now you need to create a db(call it whatever) and create a .env file with this in it: DATABASE_URL="mysql2://myuser:mypass@localhost/somedatabase"
I always run into trouble with this step^ so here is how I fixed it i think: https://stackoverflow.com/questions/37879448/mysql-fails-on-mysql-error-1524-hy000-plugin-auth-socket-is-not-loaded.
 
