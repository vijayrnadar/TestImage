# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Install Tesseract and required dependencies
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    tesseract-ocr-eng \
    tesseract-ocr-osd \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy your image(s) to the container
COPY images /app/images

# Run Tesseract on the image(s)
CMD ["tesseract", "/app/images/Test2.png", "/app/output", "--oem", "1"]
