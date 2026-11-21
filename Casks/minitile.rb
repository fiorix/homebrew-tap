cask "minitile" do
  version "0.10.0"
  sha256 "8d50d9168fc1edea841ad191d99bbbfed387fd1e43386b984dbfece2d6480e29"

  url "https://github.com/fiorix/minitile/releases/download/v#{version}/minitile.dmg"
  name "minitile"
  desc "Tiling window manager with pages, workspaces and familiar shortcuts"
  homepage "https://minitile.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Minitile.app"
  binary "#{appdir}/Minitile.app/Contents/MacOS/mntl"

  uninstall quit: [
    "app.minitile",
    "com.github.fiorix.minitile",
  ]

  zap trash: [
    "~/.config/minitile",
    "~/.local/state/minitile",
  ]
end
