cask "qmk-toolbox" do
  version "0.0.19"
  sha256 "dfcb04fd89f01514d5e9309d7619a8c91aee5a0b708bf870448711f9d689f175"

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
