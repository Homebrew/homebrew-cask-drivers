cask 'lg-onscreencontrol' do
  version '2.82'
  sha256 '2cc18bea2b9380f508ea4032adbdff3848bd4c2759fe37c1dd15c9080d2ba63b'

  url "https://www.lg.com/us/lgecs.downloadFile.ldwf?DOC_ID=20150320442554&what=MANUAL&fromSystem=LG.COM&fileId=A3JIVu40gLdP5icqVH59Q&ORIGINAL_NAME_b1_a1=Mac_OSC_#{version}.zip"
  name 'LG OnScreen Control'
  homepage 'https://www.lg.com/us/support/monitors'

  accessibility_access true

  pkg "OnScreenControl_V#{version}.pkg"

  postflight do
    set_permissions '/usr/local',     '0755'
    set_permissions '/usr/local/lmm', '0755'
  end

  uninstall login_item: [
                          'OnScreen Control',
                          'OSCMultiMonitor',
                        ],
            quit:       [
                          'com.LGSI.OnScreen-Control',
                          'com.LGSI.OSCMultiMonitor',
                        ],
            pkgutil:    [
                          'com.lge.onscreenControl.*',
                          'com.lge.OnscreenControl.*',
                        ]

  zap trash: [
               '~/Library/Caches/com.LGSI.OnScreen-Control',
               '~/Library/Caches/com.LGSI.OSCMultiMonitor',
               '~/Library/Preferences/com.LGSI.OnScreen-Control.plist',
               '~/Library/Preferences/com.LGSI.OSCMultiMonitor.plist',
             ]
end
