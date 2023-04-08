# Start with an official Hugo image
FROM klakegg/hugo:ext

# Set working directory
WORKDIR /app

# Copy source files
COPY . .

# Build the site
RUN hugo --minify

EXPOSE 80

# Serve the site on port 80
CMD ["hugo", "serve", "--bind=0.0.0.0", "--port=80"]
