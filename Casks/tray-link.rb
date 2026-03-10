cask "tray-link" do
  version "2.1.5"
  sha256 "c1a14626b2de2ecad61d9522f6f875d0f54bb2a4d220062c0b911f942fda6375"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.1.5/Tray-Link-macOS-universal.zip"
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
