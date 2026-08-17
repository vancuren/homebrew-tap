cask "usage" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "1f210fbd7715eac6e74d817a1b691239d807396b5353505400a7394752483007",
         intel: "3c1a7059dbc0bc292bdee5e850e22269cf0782c0787b0caaa48626f29e00ba16"

  url "https://github.com/vancuren/get.usage.download/releases/download/v#{version}/Usage_#{version}_#{arch}.dmg",
      verified: "github.com/vancuren/get.usage.download/"
  name "Usage"
  desc "Notch overlay that shows your AI usage across providers"
  homepage "https://usage.download"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Usage.app"

  uninstall quit: "net.vancuren.usage"

  zap trash: [
    "~/Library/Application Support/net.vancuren.usage",
    "~/Library/Caches/net.vancuren.usage",
    "~/Library/WebKit/net.vancuren.usage",
  ]
end
