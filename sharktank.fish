# Load environment scripts
for load_file in $fish_path/tank/*/load/*.load
	. $load_file
end

# Load function scripts
for function_path in $fish_path/tank/*/functions
  set fish_function_path $function_path $fish_function_path
end

# Load Completions
for complete_path in $fish_path/tank/*/completions
  set fish_complete_path $complete_path $fish_complete_path
end
