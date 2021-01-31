cask "qmk-toolbox" do
  version "0.0.21"
  sha256 "22d9eea172f7c6947e59df3a884d22d626c1b1fa37ab91df06d86c8751e48af6"

  url "https://github.com/qmk/qmk_toolbox/releases/download/#{version}/QMK.Toolbox.app.zip",
      verified: "github.com/qmk/qmk_toolbox/"
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
