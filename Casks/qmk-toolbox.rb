cask "qmk-toolbox" do
  version "0.1.1"
  sha256 "9ce6eb38662d47bf56ab41e52d7935183b5c8357d47f76693160a3e6efd6c3d3"

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
