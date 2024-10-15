# Deno NestJS App
This is a simple "Hello World" application using NestJS on Deno, running inside a Docker container.

## Prerequisites
Before running the application, make sure you have the following installed on your machine:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Homebrew](https://brew.sh/) (for macOS/Linux)
- [Deno](https://deno.land/)

## Installing Deno via Homebrew
To install Deno using Homebrew, open a terminal and run the following command:

```bash
brew install deno
```

Verify the installation by checking the Deno version:

```bash
deno --version
```

You should see output like this:

```bash
deno 2.0.0 (stable, release, aarch64-apple-darwin)
v8 12.9.202.13-rusty
typescript 5.6.2
```

## Project Setup

### 1. Clone the Repository
First, clone this repository to your local machine:

```bash
git clone https://github.com/your-username/deno-nestjs-app.git
cd deno-nestjs-app
```

### 2. Application Files
Your project should have the following structure:

```css
deno-nestjs-app/
│
├── docker-compose.yml
├── Dockerfile
├── main.ts
├── README.md
```

- `main.ts`: The main Deno NestJS application file.
- `Dockerfile`: The Dockerfile to containerize the application.
- `docker-compose.yml`: Docker Compose configuration for easier management.

### 3. Build and Run the Application Using Docker
The application is Dockerized, so you can easily build and run it without installing Deno locally (though we recommended installing Deno to check and develop locally).

1. Build and start the application using Docker Compose:

    ```bash
    docker-compose up --build
    This command will build the Docker image and start the container. The application will be available on http://localhost:3000.
    ```

2. Access the application:

    Open your browser and go to http://localhost:3000. You should see the message:

    ```csharp
    Hello, World from NestJS on Deno!
    ```

### 4. Stopping the Application
To stop the application, press Ctrl+C in the terminal where Docker Compose is running. Alternatively, you can stop it using the following command:

```bash
docker-compose down
```

## Running the Application Locally (Without Docker)
If you'd like to run the application locally using Deno (without Docker), follow these steps:

1. Ensure Deno is installed (see instructions above).

2. Run the application:

    ```bash
    deno run --allow-net main.ts
    Open http://localhost:3000 in your browser to see the output.
    ```

3. Open http://localhost:3000 in your browser to see the output.

    ```
    This should now work well in VS Code. Let me know if anything else comes up!
    ```