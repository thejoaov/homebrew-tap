cask "tray-link-electron" do
  version "2.2.18"
  sha256 "9f647257ba4ff6eeca9594ff9902a35936b627b0a146cf276b5884bcb2e8cd0d"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.18/Tray.Link-darwin-arm64-2.2.18.zip"
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
