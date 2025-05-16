FROM prefecthq/prefect:3-latest

# Use the same port that Render expects
ENV PORT=4200
ENV PREFECT_API_URL=http://0.0.0.0:$PORT/api

EXPOSE $PORT

# Use shell to expand the $PORT variable at runtime
CMD ["sh", "-c", "prefect server start --host 0.0.0.0 --port $PORT"]