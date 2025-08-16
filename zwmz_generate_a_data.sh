#!/bin/bash

# Define chatbot controller configuration
CHATBOT_NAME="ZWMZ Chatbot"
DATA_SOURCE="data/chatbot_data.csv"

# Function to generate chatbot responses
generate_response() {
  RESPONSE=$(grep -i "$1" "$DATA_SOURCE" | shuf -n 1 | cut -d "," -f 2-)
  echo "$RESPONSE"
}

# Function to handle user input
handle_input() {
  read -p "User: " USER_INPUT
  RESPONSE=$(generate_response "$USER_INPUT")
  echo "Chatbot: $RESPONSE"
}

# Main loop
while true; do
  handle_input
done