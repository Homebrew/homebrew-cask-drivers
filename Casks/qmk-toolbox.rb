cask 'qmk-toolbox' do
  version '0.0.14'
  sha256 '3327a13c64824ef22edf9c9f1292958fef3fc01db59e676501ee249153439071'

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
