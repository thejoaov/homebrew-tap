cask "tray-link" do
  arch arm: "arm64", intel: "x64"

  version "2.2.19"
  sha256 "fe43187c8e216db838c98d8b1b909f0f74da5f9821b317fe11a37e425958597b"

  url "https://github.com/thejoaov/tray-link/releases/download/v2.2.19/Tray-Link-macOS-universal.zip"
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
