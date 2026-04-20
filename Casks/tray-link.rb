cask "tray-link" do
  arch arm: "arm64", intel: "x64"

  version "2.2.12"
  sha256 "ffbfb753f7e0e31cd78e6f652d0c8b6924dd6dce140b6a518f6b2e3fa8bbe258"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.12/Tray-Link-macOS-universal.zip"
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
