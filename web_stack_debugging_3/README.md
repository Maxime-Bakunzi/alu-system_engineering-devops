# Web stack Debugging 3

### Strace Is Your Friend - Puppet Project

This project aims to troubleshoot and fix a scenario where the Apache web server returns a 500 Internal Server Error. The issue will be diagnosed using `strace`, and the fix will be automated using Puppet manifests.

## Scenario Overview

In this project, we encounter a situation where the Apache web server is returning a 500 Internal Server Error. The task is to use `strace` to diagnose the root cause of the issue, apply the necessary fix, and then automate the fix using Puppet manifests.

## Requirements

- Operating System: Ubuntu 14.04 LTS
- Puppet Version: 3.4
- Tool: `strace` for diagnosing system calls
- Tool: `tmux` for running `strace` and `curl` simultaneously

## Project Structure

The project consists of the following components:

- `0-strace_is_your_friend.pp`: Puppet manifest file containing code to automate the fix.
- `README.md`: This document, providing project details and instructions.

## Usage

1. **Diagnosing with `strace`**:
   
   - Run `strace` to attach to the Apache process:
   
     ```bash
     sudo strace -p <apache_process_id>
     ```
   
   - In a separate terminal window, replicate the issue:
   
     ```bash
     curl -sI 127.0.0.1
     ```
   
   - Analyze `strace` output for errors or unusual behavior to identify the root cause.

2. **Fixing the Issue**:

   - Based on `strace` observations, fix the underlying cause of the 500 error.

3. **Automating with Puppet**:

   - Create and edit the `0-strace_is_your_friend.pp` file with Puppet code to apply the fix.

     ```puppet
     # Sample Puppet manifest
     file { '/etc/apache2/conf/myconfig.conf':
       ensure  => present,
       source  => 'puppet:///modules/my_module/myconfig.conf',
       require => Class['apache'],
     }

     class apache {
       # Define your Apache configuration here
     }
     ```

   - Apply the Puppet manifest:
   
     ```bash
     sudo puppet apply 0-strace_is_your_friend.pp
     ```

4. **Verification**:

   - Use `curl` to verify the Apache server's response:
   
     ```bash
     curl -sI 127.0.0.1:80
     ```

   - If the response is a 200 OK, the issue is resolved.

## Notes

- Adapt the Puppet code to match your specific issue and environment.
- Puppet versions beyond 3.4 are recommended for more up-to-date features and security.

---
* Project created by [Maxime Guy Bakunzi](https://github.com/Maxime-Bakunzi)


