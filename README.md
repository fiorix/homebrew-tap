# fiorix/homebrew-tap

Homebrew packages by [@fiorix](https://github.com/fiorix).

```sh
brew tap fiorix/tap
```

Homebrew loads packages from taps outside its own catalogue only once you trust them, so trust each package before installing it.

## minitile

[minitile](https://minitile.app/) is a small tiling window manager for macOS: pages run horizontally, workspaces stack vertically, and familiar shortcuts move between them. It needs macOS 26 or later on Apple silicon.

```sh
brew trust --cask fiorix/tap/minitile
brew install --cask fiorix/tap/minitile
```

The cask installs `Minitile.app` and links the `mntl` command line tool. Upgrade with `brew upgrade --cask minitile`; `brew uninstall --zap --cask minitile` also removes its configuration and state. Before the first launch, give every display a second desktop in Mission Control; see [Getting started](https://github.com/fiorix/minitile#getting-started).

## Updates

Each package follows its project's latest GitHub release. The update workflow checks every three hours and commits the new version and checksum; it can also be run by hand, or triggered by a project's release workflow with a `repository_dispatch` event.
