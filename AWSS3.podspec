Pod::Spec.new do |s|


  s.name         = "AWSS3"
  s.version      = "0.0.2"
  s.platform     = :ios, '6.0'
  s.summary      = "iOS SDK for Amazon S3."

  s.description  = <<-DESC
                   iOS SDK for Amazon S3. See more at http://aws.amazon.com/documentation/sdkforios/.
                   DESC

  s.homepage     = "https://github.com/FWKamil/AWSS3"
  s.license      = { :type => 'Apache License', :file => 'LICENSE' }
  s.author       = { "Kamil Kocemba" => "kamil@futureworkshops.com" }

  s.source       = { :git => "https://github.com/FWKamil/AWSS3.git", :tag => "0.0.2" }

  s.public_header_files = 'AWSS3/**/*.h'
  s.source_files = ['AWSRuntime.framework/Versions/A/Headers/*.h', 'AWSS3.framework/Versions/A/Headers/*.h']
  s.requires_arc = false
  s.frameworks = ['AWSS3', 'AWSRuntime']
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/AWSS3"', 'OTHER_LD_FLAGS' => '-framework AWSS3 -framework AWSRuntime' }
  s.preserve_paths = ['AWSS3.framework', 'AWSRuntime.framework']

end
