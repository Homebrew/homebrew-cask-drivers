cask 'elektron-overbridge' do
  version '2.0.37.3'
  sha256 '3f54c2300af5d86b021e4400d78cad9ac5aea1c4b6ba96814a123521b87c3feb'

  # se-elektron-devops.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://se-elektron-devops.s3.amazonaws.com/release/8d1ef129-6161-52ac-b65a-ea18489fd654/Elektron_Overbridge_#{version}.dmg"
  appcast 'https://www.elektron.se/support/?connection=overbridge#resources'
  name 'Overbridge'
  homepage 'https://www.elektron.se/overbridge/'

  pkg "Elektron Overbridge Installer #{version}.pkg"

  uninstall pkgutil:   'se.elektron.overbridge.*',
            launchctl: 'se.elektron.overbridge.engine',
            delete:    '/Applications/Elektron'
end
