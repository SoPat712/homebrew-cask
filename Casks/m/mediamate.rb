cask "mediamate" do
  version "3.7.1,300"
  sha256 "874fd67c055d4da6e48d0e517e7d9cc7f2d9186f03c82b5e2917ffd8610c53b2"

  url "https://github.com/Wouter01/MediaMate-Releases/releases/download/v#{version.csv.first}_#{version.csv.second}/MediaMate_v#{version.csv.first}-#{version.csv.second}.zip",
      verified: "github.com/Wouter01/MediaMate-Releases/"
  name "MediaMate"
  desc "UI replacement for volume, brightness and now playing controls"
  homepage "https://wouter01.github.io/MediaMate/"

  livecheck do
    url "https://raw.githubusercontent.com/Wouter01/MediaMate-Releases/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "MediaMate.app"

  uninstall quit: "com.tweety.MediaMate"

  zap trash: [
    "~/Library/Caches/CloudKit/com.tweety.MediaMate",
    "~/Library/Caches/com.tweety.MediaMate",
    "~/Library/HTTPStorages/com.tweety.MediaMate",
    "~/Library/HTTPStorages/com.tweety.MediaMate.binarycookies",
    "~/Library/Preferences/com.tweety.MediaMate.plist",
  ]
end
