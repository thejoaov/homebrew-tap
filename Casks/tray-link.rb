cask "tray-link" do
  version "2.1.9"
  sha256 "b2eee6425058028add63e6643e4a049d8bb7b207b5ab949925e8ef5505b2f436"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.1.9/Tray-Link-macOS-universal.zip"
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
