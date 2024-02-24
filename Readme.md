# howto

## pacman

```sh
awk '{print $1}'  packman.txt |  xargs pacman -S
```

`stow nvim`

### Misc

### Setting default applications

```
xdg-settings set default-web-browser firefox.desktop
xdg-mime default thunar.desktop inode/directory
xdg-mime default kitty.desktop application/x-shellscript
```

### Switch between NVIDIA and Intel

```bash
prime-select query
sudo prime-select intel
sudo prime-select nvidia
```
