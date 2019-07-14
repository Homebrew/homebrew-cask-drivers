cask 'smartscope' do
  version '0.15.2.0'
  sha256 '4eafdfd65eefdf22a07e6f9b50803ec035e266db234846052a5ab4c3767f3828'

  url 'https://www.lab-nation.com/package/smartscope/macos/latest/get'
  appcast 'https://www.lab-nation.com/package/smartscope/macos/latest/get'
  name 'SmartScope'
  homepage 'https://www.lab-nation.com/'

  depends_on formula: 'mono'

  app 'SmartScope.app'
  app 'SmartScopeServerUI.app'
end
