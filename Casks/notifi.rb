cask "notifi" do
  version "2.0.1"
  sha256 "30183a8064f935a6aa2fc3b06d113aad046cacae000ff0a9ff592b22f26f0688"

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
