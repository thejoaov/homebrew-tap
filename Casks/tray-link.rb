cask "tray-link" do
  version "2.2.3"
  sha256 "b123828d3774a9fd63edafeaa0f768577a694d0e7cd4fc1eb94fc378d6180b1f"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.3/Tray-Link-macOS-universal.zip"
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
