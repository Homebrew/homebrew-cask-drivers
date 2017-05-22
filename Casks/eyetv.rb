cask 'eyetv' do
  version '3.6.9_7517'
  sha256 'a4a835c8a38c12ec3f43f29ab36e520f418894b15aeae3f1e3c47267306abe27'

  # d2ax8v8radog32.cloudfront.net was verified as official when first introduced to the cask
  url "https://www.geniatech.eu/eyetv/wp-content/uploads/2017/04/EyeTV#{version}.dmg_.zip"
  appcast 'https://www.geniatech.eu/eyetv/support/eyetv-3-en/',
          checkpoint: 'd09585cd10c20c3072ec70a1cb6a98be471eea7821c6c61722d8d3213cfe4780'
  name 'EyeTV'
  homepage 'https://www.geniatech.eu/eyetv/'

  app 'EyeTV.app'
end
