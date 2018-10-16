cask 'waylensstudio' do
  version '1.4.5,1538987134629'
  sha256 '77f9942de3bb0d3c952f6b0776831bf8f7f016207751a40536e24188dd6498d3'

  # d3dxhfn6er5hd4.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3dxhfn6er5hd4.cloudfront.net/software/pc_app/WaylensStudio_for_osx_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'Waylens Studio'
  homepage 'https://www.waylens.com/download/'

  app 'WaylensStudio.app'
end
