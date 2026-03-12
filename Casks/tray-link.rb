cask "tray-link" do
  version "2.1.7"
  sha256 "a6667624ff378021818a3f7081496b5d7f6d23b03cb829fa974feea798d1e0b1"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.1.7/Tray-Link-macOS-universal.zip"
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
