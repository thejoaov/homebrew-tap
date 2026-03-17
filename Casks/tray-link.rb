cask "tray-link" do
  version "2.2.7"
  sha256 "a923a4bc90c13345a46455cb00ac9903e8b5ee0d40f70df8834f00ddb45e6fcc"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.7/Tray-Link-macOS-universal.zip"
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
