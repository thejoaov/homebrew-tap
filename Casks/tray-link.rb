cask "tray-link" do
  arch arm: "arm64", intel: "x64"

  version "2.2.15"
  sha256 "579262e3ed8fd2ad8399eb7252b56ce49f574652d2af12e567b78ef5a2ae940b"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.15/Tray-Link-macOS-universal.zip"
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
