function sp
    set dir (search-dirs)

    if test -n "$dir"
        cd "$dir"
    end
end