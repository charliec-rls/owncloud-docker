# Use the official ownCloud image
FROM owncloud:latest

# Expose necessary ports (default HTTP and HTTPS)
EXPOSE 80 443

# Set environment variables for ownCloud configuration
ENV OWNCLOUD_DOMAIN=example.com
ENV OWNCLOUD_ADMIN_USER=admin
ENV OWNCLOUD_ADMIN_PASSWORD=adminpassword

# Configure ownCloud data volume
VOLUME /var/www/html

# Set the entrypoint to ownCloud's entrypoint script
ENTRYPOINT ["/entrypoint.sh"]

# Default command to start Apache and PHP
CMD ["apache2-foreground"]
