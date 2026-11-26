cask "kookoo" do
  version "0.1.18"
  sha256 "b40eb1f6e77de136519cd771aa0be26616b7a1825b4dde833c126d3f0aadce59"

  url "https://github.com/uuuyuqi/kookoo/releases/download/v0.1.18/Kookoo-v0.1.18.dmg"
  name "Kookoo"
  desc "Native macOS terminal for AI coding agents"
  homepage "https://github.com/uuuyuqi/kookoo"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Kookoo.app"

  caveats "Preview build, not Apple-notarized. Managed Macs may require an approved distribution."
end
