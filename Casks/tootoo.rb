cask "tootoo" do
  version "0.2.2"
  sha256 "49d3a8c0db1b624f235af58a748192ecdfeebbb60f1a5c734a63134013e41b60"

  url "https://github.com/uuuyuqi/tootoo/releases/download/v#{version}/TooToo-v#{version}-macos-universal.zip"
  name "TooToo"
  desc "Zero-dependency local AI coding telemetry console & macOS menu bar pet"
  homepage "https://github.com/uuuyuqi/tootoo"

  depends_on macos: ">= :ventura"

  app "TooToo.app"
  binary "#{appdir}/TooToo.app/Contents/Resources/tootoo"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/TooToo.app"],
                   sudo: false
  end

  zap trash: [
    "~/.tootoo",
    "~/Library/Preferences/com.tootoo.telemetry.plist",
  ]

  caveats <<~EOS
    TooToo has been installed to /Applications/TooToo.app, and the CLI `tootoo` is linked into PATH.
    Launch TooToo from Applications or Spotlight to show the bunny icon in your menu bar.
  EOS
end
