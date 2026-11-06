cask "minitile" do
  version "0.4.0"
  sha256 "5589d9d43568771a945755497fe87da8e96b9bca60f2ca32ebdcb1b409dd8792"

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
