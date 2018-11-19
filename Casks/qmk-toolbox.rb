cask 'qmk-toolbox' do
  version '0.0.9'
  sha256 '8a403a65a11e687982638245330a6f431d6cdd29897d78c42b08e376d2ea832f'

  # github.com/qmk/qmk_toolbox was verified as official when first introduced to the cask
  url "https://github.com/qmk/qmk_toolbox/releases/download/#{version}/QMK.Toolbox.app.zip"
  appcast 'https://github.com/qmk/qmk_toolbox/releases.atom'
  name 'QMK Toolbox'
  homepage 'https://qmk.fm/'

  app 'QMK Toolbox.app'
end
