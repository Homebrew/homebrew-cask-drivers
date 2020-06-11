cask 'elektron-overbridge' do
  version '2.0.39.10,b70d78e8-b59a-50e5-b11b-86c4d30b2400'
  sha256 'c939f84aab02026a3a3cbcc512da93c35e65d59985add6d365b9e830930ecf61'

  # se-elektron-devops.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://se-elektron-devops.s3.amazonaws.com/release/#{version.after_comma}/Elektron_Overbridge_#{version.before_comma}.dmg"
  appcast 'https://www.elektron.se/support/?connection=overbridge#resources'
  name 'Overbridge'
  homepage 'https://www.elektron.se/overbridge/'

  pkg "Elektron Overbridge Installer #{version}.pkg"

  uninstall pkgutil:   'se.elektron.overbridge.*',
            launchctl: 'se.elektron.overbridge.engine',
            delete:    '/Applications/Elektron'
end
