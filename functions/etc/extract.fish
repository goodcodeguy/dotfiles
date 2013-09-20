function extract --description "Conveniently extract a compressed file"
	if test (count $argv) = 1
    echo "Extracting" $argv "..."
		switch $argv
      case '*.tar.bz2'
        tar xjf $argv
      case '*.tar.gz'
        tar xzf $argv
      case '*.bz2'
        bunzip2 $argv
      case '*.rar'
        unrar x $argv
      case '*.gz'
        gunzip $argv
      case '*.tar'
        tar xf $argv
      case '*.tbz2'
        tar xjf $argv
      case '*.tgz'
        tar xzf $argv
      case '*.zip'
        unzip $argv
      case '*.Z'
        uncompress $argv
      case '*.7z'
        7z x $argv
      case '*' 
        echo "'$argv' cannot be extracted via extract()"
		end
	else
    echo "Usage: extract <filename>"
  end
end