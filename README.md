# nyped's custom repo

Custom Arch Linux repository with auto-build using GitHub Actions.

## TODO:

- [ ] Sign packages using PGP keys
- [ ] Try to install after build (`--install` pacman flag)


## wanna try?

Add this entry to `/etc/pacman.conf`:

```
[nyped]
SigLevel = Never
Server = https://github.com/nyped/nyped.db/releases/download/repo
```
