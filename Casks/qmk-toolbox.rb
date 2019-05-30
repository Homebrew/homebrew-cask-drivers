cask 'qmk-toolbox' do
  version '0.0.10'
  sha256 'ebd37d5ba2d7b2ccdf941eb6ce998fa050bfe78e630cfa09111fc76901e0e463'

  # github.com/qmk/qmk_toolbox was verified as official when first introduced to the cask
  url "https://github.com/qmk/qmk_toolbox/releases/download/#{version}/QMK.Toolbox.app.zip"
  appcast 'https://github.com/qmk/qmk_toolbox/releases.atom'
  name 'QMK Toolbox'
  homepage 'https://qmk.fm/'

  app 'QMK Toolbox.app'
end
