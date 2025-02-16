function __dc_complete
    set commands --build --exec --rm

    for cmd in $commands
        echo $cmd
    end
end

complete -c dc -a '(__dc_complete)'