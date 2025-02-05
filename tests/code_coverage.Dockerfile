FROM rust:1.57.0-buster

RUN apt-get update && apt-get -y install clang llvm libclang-dev
RUN rustup --version; \
    cargo --version; \
    rustc --version; \
    cargo install cargo-tarpaulin;
COPY . /home/pyrsia/
WORKDIR /home/pyrsia
CMD ["cargo", "tarpaulin", "--workspace"]
