cask "tray-link-electron" do
  version "2.2.3"
  sha256 "4861c9e4a2e5d22e9561ac20692bb5cc07a80b2433d84c3a61302e7fc1ead3d4"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.3/Tray.Link-darwin-arm64-2.2.3.zip"
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
