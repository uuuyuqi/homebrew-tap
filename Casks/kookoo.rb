cask "kookoo" do
  version "0.1.19"
  sha256 "8562b28e2982d52b8456479ee3f3a880cff89b56c651880bc98a067e2376ce3e"

  url "https://github.com/uuuyuqi/kookoo/releases/download/v0.1.19/Kookoo-v0.1.19.dmg"
  name "Kookoo"
  desc "Native macOS terminal for AI coding agents"
  homepage "https://github.com/uuuyuqi/kookoo"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Kookoo.app"

  caveats "Preview build, not Apple-notarized. Managed Macs may require an approved distribution."
end
