Pod::Spec.new do |spec|
  spec.name         = "NESDeltaCore"
  spec.version      = "0.1"
  spec.summary      = "Nintendo Entertainment System plug-in for Delta emulator."
  spec.description  = "iOS framework that wraps Nestopia to allow playing NES games with Delta emulator."
  spec.homepage     = "https://github.com/LitRitt/NESDeltaCore"
  spec.platform     = :ios, "16.0"
  spec.source       = { :git => "https://github.com/LitRitt/NESDeltaCore.git" }

  spec.author             = { "Chris Rittenhouse" => "dev@litritt.com" }
  spec.social_media_url   = "https://twitter.com/lit_ritt"
  
  spec.source_files  = "NESDeltaCore/**/*.{h,m,mm,swift}", "NestopiaJS/NESEmulatorBridge.cpp", "nestopia/source/core/**/*.{hpp,h}"
  spec.public_header_files = "NestopiaJS/NESEmulatorBridge.hpp"
  spec.header_mappings_dir = ""
  spec.resource_bundles = {
    "NESDeltaCore" => ["NESDeltaCore/**/*.deltamapping", "NESDeltaCore/**/*.ignitedskin", "NestopiaJS/NstDatabase.xml"]
  }
  
  spec.dependency 'DeltaCore'
    
  spec.xcconfig = {
    "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "FRAMEWORK NATIVE",
    "USER_HEADER_SEARCH_PATHS" => '"${PODS_CONFIGURATION_BUILD_DIR}/DeltaCore/Swift Compatibility Header"'
  }
  
end
