cask 'qmk-toolbox' do
  version '0.0.9'
  sha256 'b5da22c479011e048b15ca32966c026d759c24e94d4bc182d273cccf85300f25'

  # github.com/qmk/qmk_toolbox was verified as official when first introduced to the cask
  url "https://github.com/qmk/qmk_toolbox/releases/download/#{version}/QMK.Toolbox.app.zip"
  appcast 'https://github.com/qmk/qmk_toolbox/releases.atom'
  name 'QMK Toolbox'
  homepage 'http://qmk.fm/'

  app 'QMK Toolbox.app'
end
