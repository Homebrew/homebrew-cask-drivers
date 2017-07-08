cask 'lg-onscreencontrol' do
  version '2.46'
  sha256 '943cfd2d59d56b47ae244d175eaa4344cb49e5e39a4efd812ba78939970e69e8'
  
  # http://www.lg.com/us/support-product/lg-27UD69P-W#manuals retrieved 2017-07-08
  url "http://www.lg.com/us/lgecs.downloadFile.ldwf?DOC_ID=20150320442554&what=MANUAL&fromSystem=LG.COM&fileId=q0YuHZx6oufr6zJ6znVLmg&ORIGINAL_NAME_b1_a1=MAC_OSC.#{version.major_minor_patch}.zip"
  name 'LG OnScreen Control'
  homepage 'http://www.lg.com/'

  pkg "OnScreenControl_V#{version}.pkg"

  uninstall quit:    'com.LGSI.-.OnScreen-Control',
            pkgutil: 'com.lge.onscreenControl.*'
end
