cask "tray-link" do
  version "2.1.4"
  sha256 "70aea806db7b7c688541659ae16b7cf8d4b364dcc30a4aedffb1c60c7cbc97a0"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.1.4/Tray-Link-macOS-universal.zip"
  name "Tray Link"
  desc "Manage your projects from the system tray"
  homepage "https://github.com/thejoaov/tray-link"

  app "Tray Link.app"

  zap trash: [
    "~/Library/Application Support/Tray Link",
    "~/Library/Preferences/com.thejoaov.tray-link.plist",
    "~/Library/Caches/com.thejoaov.tray-link",
  ]
end
