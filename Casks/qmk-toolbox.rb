cask 'qmk-toolbox' do
  version '0.0.15'
  sha256 '4c6cce21d3989d07913801314d0174391998e362cf86ecd68418135d675bb646'

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
