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

## chan

[chan](https://chan.app) is a supercharged terminal emulator, free and open source. Apple silicon macOS only. Install the desktop app, `Chan.app` from the signed and notarized release DMG, or the headless CLI, the released `chan` binary with its `cs` symlink; one or the other, not both, since the app provides the same `chan` and `cs` commands through shims in `~/.local/bin` that it maintains itself.

```sh
brew trust --cask fiorix/tap/chan-desktop
brew install --cask fiorix/tap/chan-desktop
```

```sh
brew trust --formula fiorix/tap/chan
brew install fiorix/tap/chan
```

The app updates itself; the cask declares `auto_updates`, so `brew upgrade` skips it unless given `--greedy`. The CLI updates through `brew upgrade chan`; prefer that over `chan upgrade` so Homebrew's recorded version stays correct. Both definitions are rendered from templates in [fiorix/chan](https://github.com/fiorix/chan) (`packaging/distros/homebrew/`) and pushed here by its `publish-downstream` workflow at every GA release; the tap's update workflow leaves these two files alone. Do not edit them by hand.

## Updates

Each package follows its project's latest GitHub release, chan's two definitions through chan's own release workflow (above) and the others through this tap's update workflow, which checks every three hours and commits the new version and checksum; it can also be run by hand, or triggered by a project's release workflow with a `repository_dispatch` event.
