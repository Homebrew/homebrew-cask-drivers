cask 'waylensstudio' do
  version '1.4.3,1532080340208'
  sha256 '4760442db51f84de4192c59455d4c82a31fe1994fe6846f712cf00b357ffc6a5'

  # d3dxhfn6er5hd4.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3dxhfn6er5hd4.cloudfront.net/software/pc_app/WaylensStudio_for_osx_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'Waylens Studio'
  homepage 'https://www.waylens.com/download/'

  app 'WaylensStudio.app'
end
