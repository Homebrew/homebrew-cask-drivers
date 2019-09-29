cask 'qmk-toolbox' do
  version '0.0.13'
  sha256 'c94c57c179088ab74fbe0d25cbf0d43f03fe2f41e7fd8f7f0bda5957123b563f'

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
