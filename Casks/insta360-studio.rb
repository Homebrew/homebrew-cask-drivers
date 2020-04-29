cask 'insta360-studio' do
  version '3.4.7,2020_20200403_211711'
  sha256 '281003b02ca67aacebac244089765105cbcbe690db2b0268c3f2510a8592931c'

  url "https://static.insta360.com/assets/storage/20200403/6541c24171997d44290716cac13e7dfb/Insta360_Studio_#{version.after_comma}_signed.pkg.zip"
  name 'Insta360 Studio'
  homepage 'https://www.insta360.com/'

  container :zip

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
