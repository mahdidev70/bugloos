
## About Project

This project parse large logs from text file and insert data into database.
For speed up it use sed command and then import txt file.
<br>First you should run " php artisan logs:parse ". this command will parse log file and generate insert query file.
Then you must run " php artisan logs:insert". this command will import file into database. notice this command will ask your database password.

## Learning api

There is a api that count number of logs from database.
If you would to know how to use it, you can refer into online documentation by this relative path: "./request-docs"
