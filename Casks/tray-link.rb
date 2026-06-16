cask "tray-link" do
  arch arm: "arm64", intel: "x64"

  version "2.2.14"
  sha256 "7021b58fa4fa602cb1dadb722cbd67c046bbb01b04ed24b33b71a4ec7afdf93d"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.14/Tray-Link-macOS-universal.zip"
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
