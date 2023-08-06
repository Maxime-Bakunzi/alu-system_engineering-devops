Sure! Here's a comprehensive README.md file for the project that includes all the questions above:

```markdown
# Project Name

Short description or introduction to the project.

## Table of Contents

- [Project Overview](#project-overview)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Project Overview

A brief overview of what the project is about and its purpose. Include any necessary background information or context.

## Installation

Instructions on how to install and set up the project. Include any dependencies or prerequisites that need to be installed.

```bash
$ git clone https://github.com/yourusername/your-repo.git
$ cd your-repo
$ npm install  # or any other package manager used
$ npm start    # or the command to run the project
```

## Usage

Explanation of how to use the project. Provide examples and code snippets if necessary

Copyright (c) 2023 [https://github.com/Maxime-Bakunzi](Maxime Bakunzi)

## Requirements

General:
- Allowed editors: vi, vim, emacs
- All your files will be interpreted on Ubuntu 16.04 LTS
- All your files should end with a new line
- A [README.md](README.md) file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- Your Bash script must pass Shellcheck (version 0.3.7) without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script is doing
- You can’t use systemctl for restarting a process

Install Nginx Web Server:
- Use the `apt-get` command with the `-y` flag to automatically confirm installations

Setup Domain Name:
- Obtain the promo code from the tools space to get a free domain name for a year from .TECH Domains
- Register the domain name without any subdomain (e.g., foobar.tech) using the promo code
- Configure the DNS records with an A entry to point to your web-01 server's IP address
- Wait for the DNS propagation to complete, which may take around 1-2 hours
- Enter the domain name in the Project website URL field in your profile

Redirection:
- Configure Nginx to redirect requests from /redirect_me to another page with a "301 Moved Permanently" status
- The redirection page should return an HTTP 301 error code
- The redirection page should contain the string "Ceci n'est pas une page"

Custom 404 Page:
- Configure Nginx to have a custom 404 page that returns an HTTP 404 error code
- The custom 404 page should contain the string "Ceci n'est pas une page"
```

Remember to replace `[Project Name]`, `[Project Overview]`, `[License Name]`, `[year]`, and `[author]` with appropriate information specific to your project. Additionally, you can add more details and explanations to each section to make the README.md more informative and helpful for users and contributors.
