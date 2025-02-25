Pod::Spec.new do |s|
    s.name         = 'llama'
    s.version      = '1.0.0'
    s.summary      = 'A short description of the llama library.'
    s.description  = <<-DESC
  An extended description of the llama library,
  which provides XYZ functionality for iOS, visionOS, and macOS applications.
    DESC
    s.homepage     = 'https://yourlibraryhomepage.example.com'
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.authors      = { 'Your Name' => 'you@example.com' }
  
    # Source URL pointing to the zipped package containing the XCFramework
    s.source       = { :http => 'https://yourlibrary.example.com/llama/1.0.0/llama.zip' }
  
    # Supported platforms
    s.platform     = :ios, '17.0'
    s.ios.deployment_target = '17.0'
    s.osx.deployment_target = '14.0'
    
    # Include the vendored XCFramework
    s.vendored_frameworks = 'llama.xcframework'
  
    # Compiler and linker flags for C++ (if needed)
    s.requires_arc = false # Set to true if your library requires ARC
    
    s.pod_target_xcconfig = {
      'OTHER_LDFLAGS' => '$(inherited) -lstdc++',
      'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++14',
      'CLANG_CXX_LIBRARY' => 'libc++',
    }
  
    s.user_target_xcconfig = {
      'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++14',
      'CLANG_CXX_LIBRARY' => 'libc++',
    }
  end
