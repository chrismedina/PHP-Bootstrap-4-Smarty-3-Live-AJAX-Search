# PHP Bootstrap 4 with Smarty 3 Live AJAX Search by: Chris Medina of chrismedinaphp.com

### Introduction

PHP Bootstrap 4 with Smarty 3 Live AJAX Search, shows how to get data from multiple tables and return the associated data in the right fashion.

Note: This uses composer for autoloading (composer.json).

### INSTALLATION
1. To get started download the package, unzip/untar into your web directory.

2. Add your database settings to the config/settings.php file.

3. Navigate to your project root and do a composer update.  Composer is a dependency package manager and this project won't work without it.

    For more info see:  https://getcomposer.org/

4. You can do a web-based database setup by visiting the application root and accessing:  

  localhost:80/index.php?controller=install&action=run
  
  (Note you will first have to create the database via mysql command line or phpmyadmin or other)

  Alternatively you can import the existing database (mysql_tables.sql) via a mysql import tool :)
 

5. Access the HomeController. From your webpath example:  

   localhost:80/index.php?controller=home&action=index

###Screenshots

![Live Search 1](https://www.chrismedinaphp.com/git/php_smarty3_bootstrap4_live_ajax_search/live_search_1.png)
![Live Search 2](https://www.chrismedinaphp.com/git/php_smarty3_bootstrap4_live_ajax_search/live_search_2.png)

### Issues

If you come across any issues please report them asap.

### License

PHP Smarty 3 with Bootstrap 4 Live AJAX Search is open-sourced software licensed under the MIT license (and possibly other licenses)
