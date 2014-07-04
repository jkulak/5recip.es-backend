# Name of the role should match the name of the file
name "dev"

default_attributes(
    "build-essential" => {
        "compile_time" => true
    }
)

# Run list function we mentioned earlier
run_list(

    "recipe[app-recipes-backend]"
)