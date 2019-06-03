cask 'insta360-studio' do
  version '3.3.3,20190530'
  sha256 '877c3768b6698826d8e016a8de8d7ac89fb37d73a1c1e85cc3e812080d35b23c'

  url "https://static.insta360.com/software/Studio/Mac/Insta360%20Studio%202019_Mac_#{version.after_comma}__signed.pkg"
  name 'Insta360 Studio'
  homepage 'https://www.insta360.com/'

  pkg "Insta360 Studio 2019_Mac_#{version}.pkg"

  uninstall quit:    'com.insta360.studio',
            pkgutil: [
                       'com.insta360.PremierePlugin',
                       'com.insta360.insta360Studio',
                     ]

  zap trash: '~/Library/Application Support/Insta360'
end
