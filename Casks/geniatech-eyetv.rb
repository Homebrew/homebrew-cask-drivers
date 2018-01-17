cask 'geniatech-eyetv' do
  version '3.6.9,7523'
  sha256 '55ce24f545b9b3acb86cdc938d49a7df3e0cebaf2e7615573a10869d228a5985'

  # file.geniatech.com/eyetv3 was verified as official when first introduced to the cask
  url "http://file.geniatech.com/eyetv3/Geniatech_eyetv_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast "https://www.geniatech.eu/support/eyetv-#{version.major}-en/",
          checkpoint: 'fabbe1829eeb737fea77832a0327b0fdb854ec768791db344610dee5a2298dda'
  name 'EyeTV'
  homepage 'https://www.geniatech.eu/product/eyetv-#{version.major}/'

  app 'EyeTV.app'
end
