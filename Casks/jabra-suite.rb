cask 'jabra-direct' do
  version '4.0.3545'
  sha256 'eaa0150c8728be1c413b72bc201af69e2712a1ee8e2d5ac0f85e0bba7229dd40'

  url 'https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.dmg'
  appcast 'https://www.jabra.com/Support/release-notes/release-note-jabra-direct'
  name 'Jabra Direct'
  homepage 'https://www.jabra.com/software-and-services/jabra-direct'

  pkg 'JabraDirectSetup.pkg'
end

