cask 'lg-onscreencontrol' do
  version '2.82'
  sha256 '2cc18bea2b9380f508ea4032adbdff3848bd4c2759fe37c1dd15c9080d2ba63b'

  url "https://www.lg.com/us/lgecs.downloadFile.ldwf?DOC_ID=20150320442554&what=MANUAL&fromSystem=LG.COM&fileId=A3JIVu40gLdP5icqVH59Q&ORIGINAL_NAME_b1_a1=Mac_OSC_#{version}.zip"
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
