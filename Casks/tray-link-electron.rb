cask "tray-link-electron" do
  version "2.2.15"
  sha256 "e132304452ef8d73a647096b36139e58ebaabfd5c9471dfa5418e0286c765ce5"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.15/Tray.Link-darwin-arm64-2.2.15.zip"
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
