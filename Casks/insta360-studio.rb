cask 'insta360-studio' do
  version '3.4.1,20190906'
  sha256 'e8cc6910cba0dfa1b54e090ae69dec605eb89f3adafb56705d5f48454081d249'

  url "https://static.insta360.com/software/Studio/Mac/Insta360%20Studio%202019_#{version.after_comma}_signed.pkg"
  name 'Insta360 Studio'
  homepage 'https://www.insta360.com/'

  pkg "Insta360 Studio 2019_#{version.after_comma}_signed.pkg"

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
