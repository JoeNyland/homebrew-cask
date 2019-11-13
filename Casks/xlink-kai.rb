cask 'xlink-kai' do
  version '7.4.30'
  sha256 '9477b36fcc7132bd5e498dd466273b347d94d6b8b35790996465ea4bc5dcb55c'
  
  url 'http://cdn.teamxlink.co.uk/binary/XLink-Kai-7.4.30-universal.pkg.zip'
  name 'XLink Kai'
  homepage 'http://www.teamxlink.co.uk/'
  
  depends_on macos: '< :catalina'

  pkg 'XLink Kai.pkg', allow_untrusted: true

  uninstall pkgutil: 'uk.co.teamxlink.kaiengine',
            quit:    'uk.co.teamxlink.kaiengine',
            trash:   '/Applications/XLink Kai.app'
end
