cask "qmk-toolbox" do
  version "0.2.1"
  sha256 "2d16fd90f6ae13acd0a1934fe8acf19ac2a106a80937c4c43ec22f9f3fb68769"

  url "https://github.com/qmk/qmk_toolbox/releases/download/#{version}/QMK.Toolbox.app.zip",
      verified: "github.com/qmk/qmk_toolbox/"
  name "QMK Toolbox"
  desc "Toolbox companion for QMK Firmware"
  homepage "https://qmk.fm/"

  app "QMK Toolbox.app"

  uninstall quit: "fm.qmk.toolbox"

  zap trash: [
    "~/Library/Caches/fm.qmk.toolbox",
    "~/Library/Saved Application State/fm.qmk.toolbox.savedState",
  ]
end
