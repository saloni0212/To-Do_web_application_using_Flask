# To-Do List Application

This project is a web-based To-Do List application that integrates Flask and Streamlit. It allows users to add, view, update, and delete to-do items. The application uses SQLite for data storage.

## Features

- Add new to-do items
- View all to-do items
- Update existing to-do items
- Delete to-do items
- Search for to-do items by title

## Technologies Used

- Flask
- Streamlit
- SQLite
- SQLAlchemy
- Bootstrap (for styling)

## Getting Started

### Prerequisites

- Python 3.7 or higher
- `pip` package installer

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/saloni0212/todo-list-app.git
    cd todo-list-app
    ```

2. Create and activate a virtual environment:

    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
    ```

3. Install the dependencies:

    ```bash
    pip install -r requirements.txt
    ```

### Running the Application

1. Set up the database:

    ```bash
    python
    ```

    ```python
    from app import db
    db.create_all()
    exit()
    ```

2. Run the Flask application:

    ```bash
    flask run
    ```

3. Run the Streamlit application:

    ```bash
    streamlit run app.py
    ```

4. Open your web browser and navigate to `http://localhost:8501` to access the Streamlit interface.

### Deployment

#### Deploy on Render

1. Create a `Procfile` with the following content:

    ```
    web: sh setup.sh && streamlit run app.py
    ```

2. Create a `setup.sh` file with the following content:

    ```bash
    #!/bin/bash

  # Install dependencies
  pip install -r requirements.txt

   # Set Streamlit to run on port 8000 (the default Render port)
   echo "\
    [server]
    headless = true
    port = 8000
    enableCORS = false
    " > ~/.streamlit/config.toml
    ```

3. Make the script executable:

    ```bash
    chmod +x setup.sh
    ```

4. Ensure the `app.run()` line in `app.py` looks like this:

    ```python
    if __name__ == "__main__":
        app.run(host='0.0.0.0', port=8000, debug=True)
    ```

5. Push the changes to your GitHub repository.

6. Go to [Render](https://render.com/) and create a new web service, connecting it to your GitHub repository.

7. Configure the service:
   - **Name**: Choose a name for your service.
   - **Build Command**: Leave it empty (Render will use `pip install -r requirements.txt`).
   - **Start Command**: Render will use the `Procfile`.
   - **Environment**: Set to `Python 3`.
   - **Region**: Choose a region close to your users.

8. Click "Create Web Service" to deploy your application.

## Usage

Navigate to the Streamlit interface at `http://localhost:8501` or the URL provided by Render to start using the application.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes or improvements.
