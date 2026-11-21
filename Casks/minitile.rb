cask "minitile" do
  version "0.9.1"
  sha256 "bdf6d47b93d527dcfc77385843090c3222168e0fda3ffb9b6643ab47aec4f93f"

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
