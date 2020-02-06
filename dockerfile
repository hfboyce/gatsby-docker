# Docker file for running gatsby without installing node version 10 or Gatsby.
# Hayley Boyce, February 6th, 2020

# Use ubuntu:latest as base image
FROM node:10.13-alpine

# Install gatsby-cli
RUN npm install -g gatsby-cli

