FROM mcr.microsoft.com/devcontainers/universal:2-linux

# Install additional tools
RUN apt-get update && apt-get install -y \
    postgresql-client \
    redis-tools \
    httpie \
    jq \
    && rm -rf /var/lib/apt/lists/*

# Install Rust for smart contract development
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Install Foundry for smart contract testing
RUN curl -L https://foundry.paradigm.xyz | bash && \
    /root/.foundry/bin/foundryup

# Install global Node.js packages
RUN npm install -g \
    turbo \
    @changesets/cli \
    npm-check-updates \
    concurrently \
    wait-on

# Install Python packages for AI service
RUN pip install --upgrade pip && \
    pip install poetry jupyter ipykernel

# Setup workspace
WORKDIR /workspace