cask 'qmk-toolbox' do
  version '0.0.9'
  sha256 '2c1ba34b986b959681ea70fa6c31b1d608ccd40f2dbb42002211f4cfc1d2089a'

  # github.com/qmk/qmk_toolbox was verified as official when first introduced to the cask
  url "https://github.com/qmk/qmk_toolbox/releases/download/#{version}/QMK.Toolbox.app.zip"
  appcast 'https://github.com/qmk/qmk_toolbox/releases.atom'
  name 'QMK Toolbox'
  homepage 'https://qmk.fm/'

  app 'QMK Toolbox.app'
end
