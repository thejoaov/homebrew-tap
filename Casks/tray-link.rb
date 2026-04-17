cask "tray-link" do
  arch arm: "arm64", intel: "x64"

  version "2.2.10"
  sha256 "8ac3ef24ee0b030a5d6ab2f870de9b799e1535a5fc079ca63268fd55c767f8df"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.10/Tray-Link-macOS-universal.zip"
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
