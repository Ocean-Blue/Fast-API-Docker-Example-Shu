FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy the project files to the container
COPY . .

# Install dependencies specified in requirements.txt. Run only once.
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 to make the application accessible
EXPOSE 8000

# Define the command to run the app. Run everytime app starts
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]