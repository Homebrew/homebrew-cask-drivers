cask 'synologyeiauthenticator' do
  version '1.2.2-024'
  sha256 'b753c149dc5329578d7fb47edc233e34d7c5de3295aa7e93866d0f9f9650a9cc'

  url "https://global.download.synology.com/download/Tools/EvidenceIntegrityAuthenticator/#{version}/Mac/SynologyEIAuthenticator-#{version}.dmg"
  appcast 'https://archive.synology.com/download/Tools/EvidenceIntegrityAuthenticator/'
  name 'Synology Evidence Integrity Authenticator'
  homepage 'https://www.synology.com/'

  app 'SynologyEIAuthenticator.app'
end
