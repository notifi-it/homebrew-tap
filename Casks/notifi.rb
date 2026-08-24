cask "notifi" do
  version "2.0.10"
  sha256 "5ffe5a4bd885e6d47ac4c25250b964b5d75d66000da88b7aec3bf0b731b2b417"

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
