cask 'jabra-direct' do
  version '4.0.3913'
  sha256 '3d5e9e5156248baa3e4ff5403e6c4abe845dd79210583045146a56b8d0787bc1'

  # jabraxpressonlineprdstor.blob.core.windows.net/jdo was verified as official when first introduced to the cask
  url 'https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.dmg'
  appcast 'https://www.jabra.com/Support/release-notes/release-note-jabra-direct'
  name 'Jabra Direct'
  homepage 'https://www.jabra.com/software-and-services/jabra-direct'

  pkg 'JabraDirectSetup.pkg'

  uninstall pkgutil: 'com.jabra.directonline',
            delete:  '/Applications/Jabra Direct.app'
end
