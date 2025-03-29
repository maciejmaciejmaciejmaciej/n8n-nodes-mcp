FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Install the desired npm packages globally
RUN npm install server-wp-mcp

RUN npm install n8n-nodes-langchain

# Revert to the node user for security purposes
USER node
