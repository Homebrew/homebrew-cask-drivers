cask 'insta360-studio' do
  version '3.4.5,2020_20200325_114234'
  sha256 '3347e13516ce67b60c72654697b5e3ae70c045decf977e449d528e03beda131e'

  url "https://static.insta360.com/assets/storage/20200325/0ec5f9094db37c0cc39b81a7efae552f/Insta360_Studio_#{version.after_comma}_sig....pkg"
  name 'Insta360 Studio'
  homepage 'https://www.insta360.com/'

  pkg "Insta360_Studio_#{version.after_comma}_sig....pkg"

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
