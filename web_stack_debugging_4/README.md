# Web Server Configuration and Debugging Project

This project focuses on debugging and optimizing a web server setup featuring Nginx. The goal is to ensure the web server performs well under pressure and handles HTTP requests effectively. The scenario involves using ApacheBench for benchmarking and diagnosing issues in the web server setup. The Puppet configuration management tool is employed to address these issues and improve the server's performance.

## Problem Statement

The initial setup experienced a high number of failed requests when benchmarked using ApacheBench. The server was struggling to handle the load, and users were encountering "Too many open files" errors.

## Solution

The solution involved the following steps:

1. Benchmarking the server's performance using ApacheBench.
2. Analyzing the benchmark results and identifying the "Too many open files" issue.
3. Utilizing Puppet to create configuration manifests for addressing the issue.
4. Applying the Puppet manifests to the server to implement the necessary changes.
5. Re-running the benchmark to verify the effectiveness of the configuration changes.

## Files and Directories

- `0-the_sky_is_the_limit_not.pp`: Puppet manifest for resolving the issue of failed requests.
- `1-user_limit.pp`: Puppet manifest for adjusting the open file limit for the holberton user.
- `README.md`: This documentation file.

## Getting Started

1. Clone this repository to your server.
2. Make sure you have Puppet installed on your system (Puppet v3.4).
3. Apply the Puppet manifests in the correct order to implement the necessary changes.

## Usage

1. Apply the Puppet manifests using the following command:
   
   ```bash
   puppet apply 0-the_sky_is_the_limit_not.pp
   puppet apply 1-user_limit.pp
   ```

2. Monitor the changes in the server's performance by benchmarking with ApacheBench.

## Troubleshooting

If you encounter any issues during the configuration process or have questions, feel free to reach out for assistance.

## Contributors

- [Maxime Bakunzi](https://github.com/Maxime-Bakunzi)
