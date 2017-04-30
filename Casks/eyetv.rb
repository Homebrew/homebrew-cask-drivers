cask 'eyetv' do
  version '3.6.9_7416'
  sha256 '96d287b9f1fb5b3341105dd9f9e4cafbed2daf148133ee6b2d1c0cdd0c2ff258'

  # d2ax8v8radog32.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ax8v8radog32.cloudfront.net/eyetv3/Geniatech_eyetv_#{version}.dmg"
  appcast 'https://www.geniatech.eu/eyetv/support/eyetv-3-en/',
          checkpoint: '61117cf7e47fb1d7c1be173fb9c573a17f6ec66289236f026a0db8fa14ef22c6'
  name 'EyeTV'
  homepage 'https://www.geniatech.eu/eyetv/'

  app 'EyeTV.app'
end
