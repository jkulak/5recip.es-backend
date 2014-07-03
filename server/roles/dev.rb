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
    "build-essential" => {
        "compile_time" => true
    }
)

# Run list function we mentioned earlier
run_list(

    "recipe[apt]",
    "recipe[wac-default]",
    "recipe[app-recipes-backend::database_server]",
    "recipe[app-recipes-backend::app_server]",
    "recipe[nginx]",
    "recipe[wac-drupal]",
)