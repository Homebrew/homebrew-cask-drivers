cask "qmk-toolbox" do
  version "0.0.18"
  sha256 "e6ce47574b1d1c3e319278fd254a186a131eaa096b0ca859263575cfad167d19"

  # github.com/qmk/qmk_toolbox/ was verified as official when first introduced to the cask
  url "https://github.com/qmk/qmk_toolbox/releases/download/#{version}/QMK.Toolbox.app.zip"
  appcast "https://github.com/qmk/qmk_toolbox/releases.atom"
  name "QMK Toolbox"
  homepage "https://qmk.fm/"

  app "QMK Toolbox.app"

  uninstall quit: "fm.qmk.toolbox"

  zap trash: [
    "~/Library/Caches/fm.qmk.toolbox",
    "~/Library/Saved Application State/fm.qmk.toolbox.savedState",
  ]
end
