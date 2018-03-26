cask 'lg-onscreen-control' do
  version '2.86,Xo0dELqtvVrShJQdcnY3Lw'
  sha256 '6c51af51f08094ab9065eced026408fc169fdf563289fd278a579e9889f2fa28'

  url "https://www.lg.com/us/lgecs.downloadFile.ldwf?DOC_ID=20150320442554&what=MANUAL&fromSystem=LG.COM&fileId=#{version.after_comma}&ORIGINAL_NAME_b1_a1=Mac_OSC_#{version.before_comma}.zip"
  name 'LG OnScreen Control'
  homepage 'https://www.lg.com/us/support/monitors'

  accessibility_access true

  pkg "OSC_V#{version.before_comma}_Patch8.pkg"

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
