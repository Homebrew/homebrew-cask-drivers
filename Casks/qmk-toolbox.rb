cask "qmk-toolbox" do
  version "0.0.20"
  sha256 "b44aa0bef6dac63ed2dd8695644772e00013a84739c7b82da79692ebd22cc2bc"

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
