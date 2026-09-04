cask "notifi" do
  version "2.0.18"
  sha256 "87a851bb3a6ff95a6630770571c889269424b09509058c845466d0836abc5554"

  url "https://github.com/notifi-it/notifi/releases/download/v#{version}/notifi-#{version}.dmg"
  name "notifi"
  desc "Push notifications for your scripts, servers and side projects"
  homepage "https://notifi.it/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "notifi.app"

  zap trash: [
    "~/Library/Application Support/notifi",
    "~/Library/Caches/it.notifi.notifi",
    "~/Library/Preferences/it.notifi.notifi.plist",
  ]
end
