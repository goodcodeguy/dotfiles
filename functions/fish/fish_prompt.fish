function parse_git_branch
  sh -c 'git branch --no-color 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
end

function parse_git_tag
  git describe --tags --always ^/dev/null
end

function parse_git_tag_or_branch
  if [ (parse_git_branch) != "(no branch)" ]
          parse_git_branch
  else
          parse_git_tag
  end
end

function git_parse_ahead_of_remote
  git status ^/dev/null | grep 'Your branch is ahead of' | sed -e 's/# Your branch is ahead of .* by \(.*\) commit.*/\1/g'
end

function is_git
  git status >/dev/null ^&1 
  return $status
end



function fish_prompt -d "Write out the prompt"
  printf '%s%s%s' (set_color brown) (whoami)  (set_color normal) 

  # Color writeable dirs green, read-only dirs red
  if test -w "."
    printf ' %s%s' (set_color green) (prompt_pwd)
  else
    printf ' %s%s' (set_color red) (prompt_pwd)
  end


  # Print git tag or branch
  if is_git
    printf ' %s%s(%s)' (set_color normal) (set_color blue) (parse_git_tag_or_branch)
    set git_ahead_of_remote (git_parse_ahead_of_remote)
    if [ -n "$git_ahead_of_remote" -a "$git_ahead_of_remote" != "0" ]
      printf ' +%s' (git_parse_ahead_of_remote)
    end
  end
  printf '%s> ' (set_color normal)
end