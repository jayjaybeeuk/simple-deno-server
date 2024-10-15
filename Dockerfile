# Use the official Deno image
FROM denoland/deno:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the local files into the container
COPY . .

# Cache the dependencies
RUN deno cache src/main.ts

# Expose the port the app will run on
EXPOSE 3000

# Command to run the application
CMD ["deno", "run", "--allow-net", "src/main.ts"]
