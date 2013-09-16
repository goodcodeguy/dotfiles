# Get rid of Greeting
set fish_greeting "Make beautiful things."

# Load environment scripts
for load_file in $fish_path/load/*.load
	. $load_file
end

# Set the new Function Path
set fish_function_path $fish_path/functions/ $fish_function_path
