# Name of the role should match the name of the file
name "dev"

override_attributes(
    "mysql" => {
        "server_root_password" => 'iloverandompasswordsbutthiswilldo',
        "server_repl_password" => 'iloverandompasswordsbutthiswilldo',
        "server_debian_password" => 'iloverandompasswordsbutthiswilldo'
    }
)

default_attributes(
    "build_essential" => {
        "compile_time" => true
    }
)

# Run list function we mentioned earlier
run_list(

    "recipe[apt]",
    "recipe[mysql::server]",
    "recipe[mysql::client]",
    "recipe[wac-default]",
    "recipe[wac-apache2]",
    "recipe[apache2::mod_headers]",
    "recipe[apache2::mod_php5]",
    "recipe[database::mysql]",
    "recipe[wac-database]",
    "recipe[nginx]",
    "recipe[wac-drupal]",
)