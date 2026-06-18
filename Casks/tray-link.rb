cask "tray-link" do
  arch arm: "arm64", intel: "x64"

  version "2.2.19"
  sha256 "29c71ce19ac338549c5c2e40bf8416cb1db527308cb0c43c735e0ef91e7ed5f0"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.19/Tray-Link-macOS-universal.zip"
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
