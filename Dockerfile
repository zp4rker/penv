FROM python:slim

# Add ll
RUN echo 'alias ll="ls -l"' >> ~/.bashrc

# Install some basics
RUN apt-get update -y && apt-get install -y git curl
# Clean up apt files
RUN apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install starship
RUN sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes && echo 'eval "$(starship init bash)"' >> ~/.bashrc

# Go to home dir
WORKDIR /root
