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
