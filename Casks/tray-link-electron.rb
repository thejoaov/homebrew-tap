cask "tray-link-electron" do
  version "2.2.7"
  sha256 "044b2bbdc8372598e93296f228de5e6466e3c4423333f3f14241b474339aa844"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.7/Tray.Link-darwin-arm64-2.2.7.zip"
  name "Tray Link"
  desc "Manage your projects from the system tray"
  homepage "https://github.com/thejoaov/tray-link"

  depends_on arch: :arm64

  app "Tray Link.app"



  zap trash: [

    "~/Library/Application Support/Tray Link",

    "~/Library/Preferences/com.thejoaov.tray-link.plist",

    "~/Library/Caches/com.thejoaov.tray-link",

  ]

end
