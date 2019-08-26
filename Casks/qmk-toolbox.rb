cask 'qmk-toolbox' do
  version '0.0.12'
  sha256 '52fe6cd2134960814cfc528af5f7400026e515510a414afcf80724c24f229a20'

  # github.com/qmk/qmk_toolbox was verified as official when first introduced to the cask
  url "https://github.com/qmk/qmk_toolbox/releases/download/#{version}/QMK.Toolbox.app.zip"
  appcast 'https://github.com/qmk/qmk_toolbox/releases.atom'
  name 'QMK Toolbox'
  homepage 'https://qmk.fm/'

  app 'QMK Toolbox.app'

  uninstall quit: 'fm.qmk.toolbox'

  zap trash: [
               '~/Library/Caches/fm.qmk.toolbox',
               '~/Library/Saved Application State/fm.qmk.toolbox.savedState',
             ]
end
