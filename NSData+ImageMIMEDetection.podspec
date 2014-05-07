Pod::Spec.new do |s|
  s.name             = "NSData+ImageMIMEDetection"
  s.version          = "0.1.0"
  s.summary          = "Category on NSData to check if it represents PNG or JPEG."
  s.homepage         = "https://github.com/talk-to/NSData-ImageMIMEDetection"
  s.license          = { :type => 'COMMERCIAL', :text => 'Property of Talk.to FZC' } 
  s.author           = 'Talk.to'
  s.source           = { :git => "http://EXAMPLE/NAME.git", :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.source_files = 'NSData+ImageMIMEDetection/*.{h,m}'
  s.public_header_files = 'NSData+ImageMIMEDetection/*.h'
end
