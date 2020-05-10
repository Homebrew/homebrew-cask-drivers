cask 'insta360-studio' do
  version '3.4.8,2020_20200430_175444'
  sha256 'b16ce5d49a350acff0ed29950518c19b38052a619a6baa341acbead640b1d640'

  url "https://static.insta360.com/assets/storage/20200508/2aac93342bc80e17434dc5568808c628/Insta360_Studio_#{version.after_comma}_signed.pkg.zip"
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
