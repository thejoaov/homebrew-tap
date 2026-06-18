cask "tray-link" do
  arch arm: "arm64", intel: "x64"

  version "2.2.18"
  sha256 "47c98adf4c618ec0d606ecc3ff3dc7820b3aa29b79f70e62077321336370b2b9"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.18/Tray-Link-macOS-universal.zip"
  name "Tray Link"
  desc "Manage your projects from the system tray"
  homepage "https://github.com/thejoaov/tray-link"

  app "Tray Link.app"
  binary "#{appdir}/Tray Link.app/Contents/Resources/tlink-#{arch}", target: "tlink"

  zap trash: [

    "~/Library/Application Support/Tray Link",

    "~/Library/Preferences/com.thejoaov.tray-link.plist",

    "~/Library/Caches/com.thejoaov.tray-link",

    "~/.tray-link",

  ]

end
