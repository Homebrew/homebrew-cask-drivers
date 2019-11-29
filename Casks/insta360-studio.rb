cask 'insta360-studio' do
  version '3.4.2,20191126_181121'
  sha256 '13a11a6c5447268efeb293bca53e4aed54bb122213f3e6d1fffbac4271fa2217'

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
