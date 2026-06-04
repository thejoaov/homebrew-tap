cask "tray-link" do
  arch arm: "arm64", intel: "x64"

  version "2.2.13"
  sha256 "cc7f14b22d2cb2b3438a1986dd747139303424a2a56198c3cbcd224acfcb4496"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.13/Tray-Link-macOS-universal.zip"
  name "Tray Link"
  desc "Manage your projects from the system tray"
  homepage "https://github.com/thejoaov/tray-link"

  app "Tray Link.app"
  binary "#{appdir}/Tray Link.app/Contents/Resources/tlink-#{arch}", target: "tlink"

  zap trash: [

    "~/Library/Application Support/Tray Link",

    "~/Library/Preferences/com.thejoaov.tray-link.plist",

    "~/Library/Caches/com.thejoaov.tray-link",

    "~/.tray-link",

  ]

end
