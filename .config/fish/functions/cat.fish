function cat --wraps='bat --paging=never' --wraps='bat -p --paging=never' --description 'alias cat=bat -p --paging=never'
  bat -p --paging=never $argv; 
end
