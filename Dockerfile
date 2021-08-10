FROM python:3.7-slim

# Add ll
RUN echo 'alias ll="ls -l"' >> ~/.bashrc

# Go to home dir
WORKDIR /root
