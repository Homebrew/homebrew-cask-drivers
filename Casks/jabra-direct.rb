cask 'jabra-direct' do
  version '1.0.12'
  sha256 'bd923b5ce38887e1fc56fbb5418f9a548932f0f9ad18e88d832b17e7e164dc90'

  # jabraxpressonlineprdstor.blob.core.windows.net/jdo was verified as official when first introduced to the cask
  url 'https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.dmg'
  appcast 'https://www.jabra.com/Support/release-notes/release-note-jabra-direct'
  name 'Jabra Direct'
  homepage 'https://www.jabra.com/software-and-services/jabra-direct'

  pkg 'JabraDirectSetup.pkg'

  uninstall pkgutil: 'com.jabra.directonline',
            delete:  '/Applications/Jabra Direct.app'
end
