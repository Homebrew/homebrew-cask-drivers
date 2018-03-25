cask 'lg-screen-manager' do
  version '2.09'
  sha256 '6e8102c56ea2480dc880e816ca2c2073a8e01f846d55e6337f72dab22b4727aa'

  url "https://www.lg.com/us/lgecs.downloadFile.ldwf?DOC_ID=20150222793490&what=MANUAL&fromSystem=LG.COM&fileId=ZU4yJWlyb8WWcDVbmOgCJg&ORIGINAL_NAME_b1_a1=LGScreenManager_#{version}.zip"
  name 'LG Screen Manager'
  homepage 'http://www.lg.com/us/support-product/lg-27MD5KA-B'

  pkg "LGScreenManager_#{version}.pkg"

  uninstall login_item: 'LG Screen Manager',
            pkgutil:    'com.LGScreenManager*',
            quit:       'com.LGSI.-.LG-Screen-Manager'
end
