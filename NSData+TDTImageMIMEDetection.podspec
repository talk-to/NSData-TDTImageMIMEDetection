Pod::Spec.new do |s|
  s.name             = "NSData+TDTImageMIMEDetection"
  s.version          = "0.1.0"
  s.summary          = "Category on NSData to check if it represents PNG or JPEG."
  s.homepage         = "https://github.com/talk-to/NSData-ImageMIMEDetection"
  s.license          = { :type => 'BSD', :text => 'Property of Talk.to FZC' } 
  s.author           = { 'Ayush Goel' => 'ayush.g@directi.com' }
  s.source           = { :git => "git@github.com:talk-to/NSData-ImageMIMEDetection.git", :tag => '#{s.version}' }

  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.source_files = 'NSData+TDTImageMIMEDetection/*.{h,m}'
  s.public_header_files = 'NSData+TDTImageMIMEDetection/*.h'
end
