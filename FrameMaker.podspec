Pod::Spec.new do |s|
  s.name          = "FrameMaker"
  s.version       = "0.1"
  s.summary       = "An Objective-C library for simplifying, encapsulating, and optimizing view layout logic into a single block for each view."
  s.homepage      = "https://github.com/lavoy/FrameMaker"
  s.license       = { :type => "MIT", :file => 'LICENSE' }
  s.author        = { "Andy LaVoy" => "andy@logcabinapps.com" }
  s.source        = { :git => "https://github.com/lavoy/FrameMaker.git", :tag => "0.1" }
  s.platform      = :ios, '2.0'
  s.source_files  = 'FrameMaker/*.{h,m}'
  s.framework     = 'Foundation'
  s.requires_arc  = true
end
