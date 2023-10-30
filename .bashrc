# Main file of the configuration

# Source the file that defines the function to get the current git branch name
source ~/.bash_config/.bash_git
# Set the prompt command to update the git branch name on each prompt
PROMPT_COMMAND='GIT_BRANCH=$(git_branch_name)'
# Set the prompt to include the current working directory and git branch name (if in a git repo)
PS1='bash [\W] [\[\033[0;36m\]${GIT_BRANCH}\[\033[0m\]] $ '
# Source the files that define the custom aliases, environment variables, and settings
source ~/.bash_config/.bash_export
source ~/.bash_config/.bash_alias
