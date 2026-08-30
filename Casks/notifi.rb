cask "notifi" do
  version "2.0.14"
  sha256 "1167b5961309f8c844dc098664851a9d23d16a7ee30e49e8a9e5ab40002fc6a9"

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
