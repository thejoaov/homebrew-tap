cask "tray-link-electron" do
  version "2.3.0"
  sha256 "d5802814522ebd0a94814362a2257ff1e51fd20e026a663f02419774e570501a"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.3.0/Tray.Link-darwin-arm64-2.3.0.zip"
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
