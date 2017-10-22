cask 'geniatech-eyetv' do
  version '3.6.9,7520:20170730'
  sha256 '41c092b92dd7470095d1748dde357de76f2331bd5e142f33d2aa3865fb5ce7a5'

  # file.geniatech.com/eyetv3 was verified as official when first introduced to the cask
  url "http://file.geniatech.com/eyetv3/EyeTV#{version.before_comma}(#{version.before_colon.after_comma})#{version.after_colon}.dmg"
  appcast "https://www.geniatech.eu/eyetv/support/eyetv-#{version.major}-en/",
          checkpoint: 'e4ff8371bd810f85f34e37a29f457395de6a1fec1966b36205852e3e9f524409'
  name 'EyeTV'
  homepage 'https://www.geniatech.eu/eyetv/'

  app 'EyeTV.app'
end
