# Project Title

## Table of Contents

- [Description](#description)
- [Requirements](#requirements)
- [Task 0: Run Software as Another User](#task-0-run-software-as-another-user)
- [Task 1: Run Nginx as Nginx User](#task-1-run-nginx-as-nginx-user)
- [Task 2: Short and Sweet Solution](#task-2-short-and-sweet-solution)
- [Usage](#usage)
- [Contributing](#contributing)

## Description

This project focuses on creating Bash scripts to achieve specific system configuration tasks while adhering to prescribed guidelines. The tasks involve user management, software execution, and security enhancement.

## Requirements

The project adheres to the following requirements:

- All scripts are written in Bash.
- Scripts are executable and pass Shellcheck without errors.
- Scripts run without errors.
- The first line of each script is `#!/usr/bin/env bash`.
- The second line of each script is a comment explaining the script's purpose.
- A `README.md` file is included at the root of the project.

## Task 0: Run Software as Another User

The Bash script in this task allows the execution of a command as a specified user. The script accepts a username as an argument and runs the `whoami` command under that user. Example usage:

```
./0-iamsomeoneelse www-data
```

## Task 1: Run Nginx as Nginx User

This task involves configuring the Nginx web server to run as the `nginx` user and listen on port 8080. The provided Bash script automates this configuration.

## Task 2: Short and Sweet Solution

In this task, a more concise Bash script is provided to achieve the same configuration as Task 1. The script is limited to 7 lines and adheres to project constraints.

## Usage

1. Clone the repository:

```
git clone https://github.com/your-username/your-project.git
```

2. Navigate to the project directory:

```
cd your-project
```

3. Execute the desired Bash scripts:

```
./script-name arg1 arg2
```

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open a conversation
