# Homebrew tap for minitile

[minitile](https://minitile.app/) is a small tiling window manager for macOS: pages run horizontally, workspaces stack vertically, and familiar shortcuts move between them.

```sh
brew install --cask fiorix/minitile/minitile
```

The cask installs `Minitile.app` and links the `mntl` command line tool. It needs macOS 26 or later on Apple silicon. Upgrade with `brew upgrade --cask minitile`; `brew uninstall --zap --cask minitile` also removes the configuration and state.

Before the first launch, give every display a second desktop in Mission Control; see [Getting started](https://github.com/fiorix/minitile#getting-started).

The cask follows the [latest release](https://github.com/fiorix/minitile/releases/latest). A workflow checks for a new release every three hours and updates the version and checksum; it can also be run by hand or triggered by the release workflow.
