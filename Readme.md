# howto

## pacman

```sh
awk '{print $1}'  packman.txt |  xargs pacman -S
```

`stow nvim`

## Setup

install rust

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

<https://doc.rust-lang.org/cargo/commands/cargo-install.html>

```sh
sudo apt install libssl-dev
cargo install cargo-update
```

```sh
cargo install topgrade xcp rm-improved zoxide
```

## Update

```sh
git submodule sync --recursive
git submodule update --init --recursive
```

### Misc

### Switch between NVIDIA and Intel

```bash
prime-select query
sudo prime-select intel
sudo prime-select nvidia
```

### swap RAM when 90% is in use

- `sudo vi /etc/sysctl.conf`
- append `vm.swappiness=10` to the file
- reboot
- look at `cat /proc/sys/vm/swappiness`

### P14s Gen3 frequency-scaling CPU issues

- add kernel param `amd_pstate=passive`
- <https://wiki.archlinux.org/title/Lenovo_ThinkPad_T14s_(AMD)_Gen_3#CPU>
- <https://wiki.archlinux.org/title/Kernel_parameters#GRUB>
