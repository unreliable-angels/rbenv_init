function rbenv_init -d 'Initialize rbenv'
    set -l rbenv_path "$HOME/.rbenv"

    for path in "$rbenv_path/bin" "$rbenv_path/shims"
    	if not contains "$path" $fish_user_paths
            if test -d "$path"
                set -U fish_user_paths "$path" $fish_user_paths
            end
    	end
    end

    rbenv rehash >/dev/null ^/dev/null
end
