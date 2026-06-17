cask "tray-link" do
  arch arm: "arm64", intel: "x64"

  version "2.2.17"
  sha256 "2ad396ce94c6c6e1ad0fbc83336c322822ed6d0459509b5dfc0909011fc415d9"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.17/Tray-Link-macOS-universal.zip"
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
