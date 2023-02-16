# howto

`stow nvim`

## Setup

install rust

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

https://doc.rust-lang.org/cargo/commands/cargo-install.html

```sh
sudo apt install libssl-dev
cargo install cargo-update
```

```sh
cargo install topgrade xcp rm-improved zoxide
cargo install --locked starship bat
```

## Update

```sh
git submodule sync --recursive
git submodule update --init --recursive
```

### Misc

### Switch between NVIDIA and Intel

```
$ prime-select query
$ sudo prime-select intel
$ sudo prime-select nvidia
```
