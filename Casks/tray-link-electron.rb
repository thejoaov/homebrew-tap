cask "tray-link-electron" do
  version "2.2.13"
  sha256 "93f7593231bae192db1a9586d4a7d89543e9b75087c222a3b56fce0ef9224f66"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.13/Tray.Link-darwin-arm64-2.2.13.zip"
  name "Tray Link"
  desc "Manage your projects from the system tray"
  homepage "https://github.com/thejoaov/tray-link"

  depends_on arch: :arm64

  app "Tray Link.app"

  zap trash: [

    "~/Library/Application Support/Tray Link",

    "~/Library/Preferences/com.thejoaov.tray-link.plist",

    "~/Library/Caches/com.thejoaov.tray-link",

    "~/.tray-link",

  ]

end
