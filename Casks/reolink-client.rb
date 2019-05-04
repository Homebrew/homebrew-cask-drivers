cask 'reolink-client' do
  version '3.5.6.55'
  sha256 '928b4eb3f381e431dee7fc16665a389d5e4b47dc80dc5f6f1e423f44f2730702'

  url 'https://cdn.reolink.com/files/client/Mac-ReolinkClient.zip'
  appcast 'https://reolink.com/software-and-manual/'
  name 'Reolink Client'
  homepage 'https://reolink.com/software-and-manual/'

  app 'Reolink Client.app'
end
