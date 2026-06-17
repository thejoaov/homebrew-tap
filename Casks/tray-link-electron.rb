cask "tray-link-electron" do
  version "2.2.17"
  sha256 "b2bca26cc7937a89d880e2cea28984a49820edc217a0d6a79e30272b1ba8f7c6"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.17/Tray.Link-darwin-arm64-2.2.17.zip"
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
