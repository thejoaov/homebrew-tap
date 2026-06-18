cask "tray-link-electron" do
  version "2.2.19"
  sha256 "2a4a4b8aecafcb07c191025a58bb838a0efdd50afc8c3177b664cf955372d127"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.19/Tray.Link-darwin-arm64-2.2.18.zip"
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
