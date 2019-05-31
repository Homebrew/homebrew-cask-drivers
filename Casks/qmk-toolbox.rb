cask 'qmk-toolbox' do
  version '0.0.10'
  sha256 '8156d1223230675c44cdf5300262b03577dfd920763e7d10a1b366c971d46e24'

  # github.com/qmk/qmk_toolbox was verified as official when first introduced to the cask
  url "https://github.com/qmk/qmk_toolbox/releases/download/#{version}/QMK.Toolbox.app.zip"
  appcast 'https://github.com/qmk/qmk_toolbox/releases.atom'
  name 'QMK Toolbox'
  homepage 'https://qmk.fm/'

  app 'QMK Toolbox.app'
end
