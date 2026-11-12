cask "minitile" do
  version "0.5.0"
  sha256 "565493fc6f9675a6375dbc2059454d043bf52170da561b4c02480b6b3abbe4cf"

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
