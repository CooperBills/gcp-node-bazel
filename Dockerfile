FROM google/cloud-sdk

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update && apt-get install -y \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g @bazel/bazelisk

# run bazel --version to pre-load latest version of bazel
RUN bazel --version
