cask 'lg-onscreen-control' do
  version '2.93_Patch1,20150116943155:66KiTUDNOklaNSrpHYo6QA'
  sha256 'a261ec486635b00ee6ff4a0d4feb88143889d14957652fd5e94c50204d9c49a1'

  url "https://www.lg.com/us/lgecs.downloadFile.ldwf?DOC_ID=#{version.after_comma.before_colon}&what=MANUAL&fromSystem=LG.COM&fileId=#{version.after_colon}&ORIGINAL_NAME_b1_a1=Mac_OSC_#{version.before_comma}.zip"
  name 'LG OnScreen Control'
  homepage 'https://www.lg.com/us/support/monitors'

  accessibility_access true

  pkg "OSC_V#{version.before_comma}.pkg"

  postflight do
    system_command '/bin/chmod',
                   args: ['755', '/usr/local', '/usr/local/lmm'],
                   sudo: true
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
