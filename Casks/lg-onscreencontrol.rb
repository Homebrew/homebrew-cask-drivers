cask 'lg-onscreencontrol' do
  version '2.55'
  sha256 '07706253f8279557f3f7d8a13392bf5f565b257445a6353936826bd246f1925d'

  url "https://www.lg.com/us/lgecs.downloadFile.ldwf?DOC_ID=20150320442554&what=MANUAL&fromSystem=LG.COM&fileId=x73htvfcBHcxPZb8AT82ug&ORIGINAL_NAME_b1_a1=Mac_OSC_#{version}.zip"
  name 'LG OnScreen Control'
  homepage 'http://www.lg.com/'

  pkg "OnScreenControl_V#{version}.pkg"

  uninstall login_item: 'OnScreen Control',
            pkgutil:    [
                          'com.lge.onscreenControl.*',
                          'com.lge.OnscreenControl.*',
                        ],
            quit:       'com.LGSI.OnScreen-Control'
end
