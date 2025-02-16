function dc
    if test (count $argv) -eq 0
        echo "Usage: dc --build | --exec | --rm"
        return 1
    end

    switch $argv[1]
        case '--build'
            cd $HOME/.dotfiles
            docker build . -t devcontainer
            return 0

        case '--exec'
            dc-run
            docker exec -it devcontainer fish
            return 0

        case '--rm'
            dc-rm
            return 0

        case '*'
            echo "Unknown option: $argv[1]"
            echo "Usage: dc --build | --exec | --rm"
            return 1
    end
end

function dc-run
    if not docker ps -a --format '{{.Names}}' | grep -q '^devcontainer$'
        docker run -d --name devcontainer -v ~/Programming:/home/devuser/Programming devcontainer:latest
        docker exec devcontainer fish -c "/home/devuser/post-build"
    else
        docker start devcontainer
    end
end

function dc-rm
    docker stop devcontainer && docker rm devcontainer
end