function fish_prompt
  # set monkey randomly
  set __r (random)
  if [ (math $__r '%7') -eq 1 ]
    printf '🐵'
  else if [ (math $__r '%3') -eq 1 ]
    printf '🙈'
  else if [ (math $__r '%2') -eq 1 ]
    printf '🙊'
  else
    printf '🙉'
  end

  # show cwd
  set_color 81a1c1
  printf ' %s' (prompt_pwd)

  # show git infomation
  set_color normal
  printf '%s ' (__fish_git_prompt)
  
  if git rev-parse --is-inside-work-tree > /dev/null 2>&1
    printf '[%s] ' (__fish_git_prompt_informative_status)
  end

  # show FISH
  set_color -o ebcb8b
  printf '⋊> '
  set_color normal
end
