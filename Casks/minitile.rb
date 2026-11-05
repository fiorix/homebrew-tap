cask "minitile" do
  version "0.1.0"
  sha256 "aaff7f6cc8695efa0848433b6220d4ffdfcb265cbdf343bc04c3417326662d79"

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

  uninstall quit: "com.github.fiorix.minitile"

  zap trash: [
    "~/.config/minitile",
    "~/.local/state/minitile",
  ]
end
