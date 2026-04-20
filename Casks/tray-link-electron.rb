cask "tray-link-electron" do
  version "2.2.12"
  sha256 "1d8eab8ca1f9e96c08a2b680b538201d54615ec5d78017578b309e71e9b613de"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.12/Tray.Link-darwin-arm64-2.2.12.zip"
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
