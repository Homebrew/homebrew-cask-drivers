cask 'insta360-studio' do
  version '3.4.6,2020_20200329_152745'
  sha256 'e5ea505086820b068c24d752a8be23f6700189c9884d7656d5bfecb0242aed2a'

  url "https://static.insta360.com/assets/storage/20200330/c9cd15091e4aca90997a8d0c9751710b/Insta360_Studio_#{version.after_comma}_signed.pkg"
  name 'Insta360 Studio'
  homepage 'https://www.insta360.com/'

  pkg "Insta360_Studio_#{version.after_comma}_signed.pkg"

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
