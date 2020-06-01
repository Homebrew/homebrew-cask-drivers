cask 'insta360-studio' do
  version '3.4.9,2020_20200528_184534'
  sha256 'f4b5d8248de4c3e89489b7f2595512420b44ff560e9e73afc88b920f968b3240'

  url "https://static.insta360.com/assets/storage/20200530/5da9d1c53a0beb63cb6f056f8c47fbba/Insta360_Studio_#{version.after_comma}_signed.pkg.zip
  name 'Insta360 Studio'
  homepage 'https://www.insta360.com/'

  container type: :zip

  pkg "Insta360 Studio #{version.after_comma}_signed.pkg"

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
