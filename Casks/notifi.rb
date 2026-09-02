cask "notifi" do
  version "2.0.15"
  sha256 "2cd075cb9f30cd9b98f90832e944c12d85b9e69b34d824b69d335fc691870427"

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
