Pod::Spec.new do |s|
  s.name = 'KontagentSDK'
  s.version = '1.1.11'
  s.license = 'Commercial'
  s.summary = 'Kontagent empowers brands with solutions to build more engaging mobile customer experiences, and more lucrative mobile businesses.'
  s.homepage = 'http://www.kontagent.com'
  s.author = { 'Kontagent' => 'http://www.kontagent.com/' }
  s.source = { :git => 'https://github.com/williamlocke/KontagentSDK.git', :tag => s.version.to_s }
  s.description = 'The Kontagent iOS SDK is built on top of our REST API; each user action you wish to track is sent to Kontagent via an API call. As such, it is important for you to also familiarize yourself with our REST API. We recommend that you view the REST API specification as you work through the iOS SDK.'
  s.platform = :ios
  s.source_files = 'Kontagent/**/*.h'
  s.preserve_paths = 'Kontagent/**/*.a'
  s.library = 'Kontagent'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/KontagentSDK/Kontagent"' }
  s.weak_frameworks = 'CoreTelephony', 'IOKit'
  s.frameworks = 'CoreData', 'SystemConfiguration'
  s.resources = "Resources/*.xcdatamodeld"
  s.compiler_flags = { '-force_load' => '"$(PODS_ROOT)/KontagentSDK/Kontagent.framework"' }
end
