cask 'eyetv' do
  version '3.6.9_7518'
  sha256 'f6108cd5c2d6626c40b21e01b585d8a4f4a681cffd39b236376fce618133e974'

  # file.geniatech.com/eyetv3 was verified as official when first introduced to the cask
  url "http://file.geniatech.com/eyetv3/EyeTV#{version}.dmg"
  appcast 'https://www.geniatech.eu/eyetv/support/eyetv-3-en/',
          checkpoint: '3e6674a84a0329cf38da68c4de888af358441c11235913ae0dfa968b98de763e'
  name 'EyeTV'
  homepage 'https://www.geniatech.eu/eyetv/'

  app 'EyeTV.app'
end
