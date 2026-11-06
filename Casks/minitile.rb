cask "minitile" do
  version "0.2.1"
  sha256 "841b8c2cd5811f21fdb4153bbbf02b0bf3e7ea5168326a8d247faae5a582d773"

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
