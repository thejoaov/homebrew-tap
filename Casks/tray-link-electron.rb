cask "tray-link-electron" do
  version "2.2.10"
  sha256 "a3f439a4b6802b03854a1f16b633d6a52b9d6f21b900b94ae6715cb5dbaf7448"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.10/Tray.Link-darwin-arm64-2.2.10.zip"
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
