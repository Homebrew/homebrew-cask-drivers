cask 'insta360-studio' do
  version '3.3.4,20190613'
  sha256 '1f0809fcd8a119d08a15003363cb3540a409d94feb7b2db7fa1fa08f3800ff85'

  url "https://static.insta360.com/software/Studio/Mac/Insta360%20Studio%202019_Mac_#{version.after_comma}_signed.pkg"
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
