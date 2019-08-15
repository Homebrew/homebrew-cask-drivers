cask 'insta360-studio' do
  version '3.4.0,20190809'
  sha256 '80f6965e9b627710e1a3286e3b81b813c8c6c2d3a1307f843cc3d4c56b2e898b'

  url "https://static.insta360.com/software/Studio/Mac/Insta360%20Studio%202019_#{version.after_comma}_signed.pkg"
  name 'Insta360 Studio'
  homepage 'https://www.insta360.com/'

  pkg "Insta360 Studio 2019_Mac_#{version.after_comma}_signed.pkg"

  uninstall quit:    'com.insta360.studio',
            pkgutil: [
                       'com.insta360.PremierePlugin',
                       'com.insta360.ThumbnailPlugin',
                       'com.insta360.insta360Studio',
                     ]

  zap trash: [
               '~/Library/Application Support/Insta360',
               '~/Library/Caches/Insta360',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.studio',
               '~/Library/Saved Application State/com.insta360.studio.savedState',
             ]
end
