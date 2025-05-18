Pod::Spec.new do |s|
  s.name             = 'boost'
  s.version          = '1.76.0'
  s.summary          = 'Boost C++ Libraries'
  s.homepage         = 'https://www.boost.org'
  s.license          = { :type => 'Boost Software License', :file => 'LICENSE' }
  s.authors          = { 'Boost' => 'https://www.boost.org' }

  # Let CocoaPods fetch & unpack the tar.bz2 for us
  s.source           = {
    :http => 'https://boostorg.jfrog.io/artifactory/main/release/1.76.0/source/boost_1_76_0.tar.bz2'
  }

  s.requires_arc     = false

  # Only pull in the headers (adjust if you need more files)
  s.public_header_files = 'boost/**/*.hpp'
  s.source_files        = 'boost/**/*.{hpp,ipp}'
end
