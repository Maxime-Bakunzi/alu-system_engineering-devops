# web_stack_debugging_0

### Debugging Project: Apache Docker Container

In this debugging project, the goal is to get an Apache web server running within a Docker container and ensure it returns a page containing "Hello Holberton" when accessing the root of the server.

## Project Steps

1. Start the Docker container with the Apache web server image:
   
   ```sh
   docker run -p 8080:80 -d -it holbertonschool/265-0
   ```

2. Check the status of the running container:
   
   ```sh
   docker ps
   ```

   You should see a container with the Apache web server image.

3. Access the Docker container's shell to inspect its configuration:
   
   ```sh
   docker exec -it <container_id_or_name> /bin/bash
   ```

4. Navigate to the Apache configuration files:
   
   ```sh
   cd /etc/apache2/sites-available
   ```

5. Check the configuration file (e.g., `000-default.conf`) and ensure it's set to listen on port 80 and serving content from the correct directory.

6. Navigate to the document root directory:
   
   ```sh
   cd /var/www/html
   ```

7. Ensure that the "index.html" file contains the desired content ("Hello Holberton").

8. Restart the Apache service to apply changes:
   
   ```sh
   service apache2 restart
   ```

9. Exit the container's shell:
   
   ```sh
   exit
   ```

10. Test the web server by querying it from your host machine:
   
    ```sh
    curl 0:8080
    ```

    You should see the "Hello Holberton" message.

11. Optionally, stop and remove the container when done testing:
   
    ```sh
    docker stop <container_id_or_name>
    docker rm <container_id_or_name>
    ```

## Troubleshooting Tips

- If you encounter any issues, make sure to check the Apache configuration files, document root directory, and container logs for any error messages.

- Be cautious with paths, as they might vary based on the Docker image and configuration.

- Ensure that Docker and required images are properly installed before starting the project.

## Conclusion

By following the steps above, you should be able to successfully run an Apache web server within a Docker container and have it return the "Hello Holberton" page when accessing the root of the server.
```

Remember to replace `<container_id_or_name>` with the actual ID or name of your running Docker container. Also, make sure to tailor the paths and instructions to match the specific Docker image and setup you're using.
