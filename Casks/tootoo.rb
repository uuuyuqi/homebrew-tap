cask "tootoo" do
  version "0.2.9"
  sha256 "5a48f7debefcc3cb6e5028fa289729943cbd6f8dc1847d119eb5a4237902f690"

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
