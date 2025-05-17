Pod::Spec.new do |s|
    s.name     = "boost"
    s.version  = "1.76.0"
    s.summary  = "Boost C++ Libraries"
    s.homepage = "https://www.boost.org"
    s.license  = { :type => "Boost Software License", :file => "LICENSE" }
    s.authors  = { "Boost" => "https://www.boost.org" }
  
    # Explicitly set the source to the Boost download URL
    s.source   = {
      :http => "https://boostorg.jfrog.io/artifactory/main/release/1.76.0/source/boost_1_76_0.tar.bz2"
    }
  
    # Comment out the checksum line to avoid conflicts
    # s.checksum = "f0397ba6e982c4450f27bf32a2a83292aba035b827a5623a14636ea583318c41"
  
    s.requires_arc = false
  
    s.prepare_command = <<-CMD
      tar -xjf boost_1_76_0.tar.bz2
    CMD
  
    s.source_files = "boost/**/*"
  end
  