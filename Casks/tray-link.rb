cask "tray-link" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 "78e50c4dfd784949756e68e8b9e8d03ff88eca82df0f4340b1e182c44cf730b6"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.3.0/Tray-Link-macOS-universal.zip"
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
