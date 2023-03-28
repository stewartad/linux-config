ENV_NAMES=("venv" "env" ".env" ".venv")

function venv {
    for env in ${ENV_NAMES[@]}; do
        if [ -d "$env" ]; then
            source "$env/bin/activate" &> /dev/null
	    if [ $? -eq 0 ]; then
                return $?
            fi
        fi
    done
    return $?
}
