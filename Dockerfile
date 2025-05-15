# Use Prefect's maintained Docker image
FROM prefecthq/prefect:3-latest

# Set the API URL so Prefect knows where it’s hosted
ENV PREFECT_API_URL=http://0.0.0.0:4200/api

# Expose the UI/API port
EXPOSE 4200

# Start the Prefect 2.x server
CMD ["prefect", "server", "start", "--host", "0.0.0.0"]