cask "1kc-razer" do
  version "0.4.6"
  sha256 "ae42ff5be42b735e284023f37c9fabba927594527bf26474cd5418cb04b599f4"

  url "https://github.com/1kc/razer-macos/releases/download/v#{version}/Razer.macOS-#{version}-universal.dmg"
  name "Razer macOS"
  desc "Open source color effects manager for Razer devices"
  homepage "https://github.com/1kc/razer-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Razer macOS.app"

  zap trash: [
    "~/Library/Preferences/com.electron.razer-macos.helper.Renderer.plist",
    "~/Library/Preferences/com.electron.razer-macos.plist",
    "~/Library/Saved Application State/com.electron.razer-macos.savedState",
  ]
end
