# Use an official Hugo image as the base image
FROM klakegg/hugo:0.88.1-ext-alpine

# Set the working directory
WORKDIR /site

# Copy the contents of the current directory to the working directory
COPY . .

# Expose the default Hugo server port
EXPOSE 1313

# Start the Hugo server
CMD ["server", "--bind", "0.0.0.0", "--port", "1313"]
