cask 'sbig-universal-driver' do
  version :latest
  sha256 :no_check

  # ftp.sbig.com was verified as official when first introduced to the cask
  url 'ftp://ftp.sbig.com/pub/SBIGDriverInstallerUniv.dmg'
  name 'SBIG Universal Driver'
  homepage 'http://diffractionlimited.com/'

  pkg 'SBIG Universal Driver Installer 4r84.pkg'

  uninstall pkgutil: 'com.sbig'
end
