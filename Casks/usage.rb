cask "usage" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "3a3d575d6da1f9546edfde7f79f0d5d909e7d295a39b08ad05342ef4f71bdcdb",
         intel: "9142dceb9af57795d7a0152a7b9736d3a6782a38318fe543feb8d4e1af1686a0"

  url "https://github.com/vancuren/get.usage.download/releases/download/v#{version}/Usage_#{version}_#{arch}.dmg",
      verified: "github.com/vancuren/get.usage.download/"
  name "Usage"
  desc "Notch overlay that shows your AI usage across providers"
  homepage "https://usage.download/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Usage.app"

  uninstall quit: "net.vancuren.usage"

  zap trash: [
    "~/Library/Application Support/net.vancuren.usage",
    "~/Library/Caches/net.vancuren.usage",
    "~/Library/WebKit/net.vancuren.usage",
  ]
end
