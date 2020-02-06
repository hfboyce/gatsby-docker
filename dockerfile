# Docker file for running gatsby without installing node version 10 or Gatsby.
# Hayley Boyce, February 6th, 2020

# Use ubuntu:latest as base image
FROM node:10.13-alpine

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy source files from host computer to the container
COPY . .

# Build the app
RUN npm run build

# Specify port app runs on
EXPOSE 8000

# Run the app
CMD [ "npm", "start" ]

# Install gatsby-cli
RUN npm install -g gatsby-cli

