function __git_upstream_configured
    git rev-parse --abbrev-ref @"{u}" > /dev/null 2>&1
end

function git_is_repo -d "Check if directory is a repository"
  test -d .git; or command git rev-parse --git-dir >/dev/null ^/dev/null
end

function git_branch_name -d "Get current branch name"
  git_is_repo; and begin
    command git symbolic-ref --short HEAD ^/dev/null;
      or command git show-ref --head -s --abbrev | head -n1 ^/dev/null
  end
end

function git_is_staged -d "Check if repo has staged changes"
  git_is_repo; and begin
    not command git diff --cached --no-ext-diff --quiet --exit-code
  end
end

function git_is_dirty -d "Check if there are changes to tracked files"
  git_is_repo; and not command git diff --no-ext-diff --quiet --exit-code
end

function git_is_touched -d "Check if repo has any changes"
  git_is_repo; and begin
    test -n (echo (command git status --porcelain))
  end
end

function fish_prompt --description 'Write out the prompt'
	set -l color_cwd
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '>'
    end

	echo -n [

	set_color 76F9FB
	echo -n "$USER"
	set_color normal

	echo -n -s @ (prompt_hostname) ':'

	set_color $color_cwd
	echo -n (prompt_pwd)
	set_color normal

	echo -n  "] "

	if git_is_repo
		set_color FEF867

		echo -n -s "(" (git_branch_name)

        if git_is_touched
            if git_is_staged
                if git_is_dirty
                    echo -n " ±"
                else
                    echo -n " +"
                end
            else if git_is_dirty
                echo -n " *"
            end
        end

		echo -n ") "
		set_color normal
    end

	echo -n "🚂  "
end
