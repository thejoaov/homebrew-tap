cask "tray-link-electron" do
  version "2.2.14"
  sha256 "107df0237b4886f7e008b2187a58502a9cd888a8ee43d07e6da7cf5ca3039f74"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.14/Tray.Link-darwin-arm64-2.2.14.zip"
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
