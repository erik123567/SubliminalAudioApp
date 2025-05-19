Pod::Spec.new do |s|
  s.name             = 'boost'
  s.version          = '1.76.0'
  s.summary          = 'Boost C++ Libraries (vendored locally)'
  s.homepage         = 'https://www.boost.org'
  s.license          = { :type => 'Boost Software License', :file => 'LICENSE' }
  s.authors          = { 'Boost' => 'https://www.boost.org' }

  # REQUIRED: point at the local folder
  s.source           = { :path => '.' }

  # All headers under boost/
  s.source_files        = 'boost/**/*.{hpp,ipp}'
  s.public_header_files = 'boost/**/*.hpp'
  s.requires_arc        = false
end
