Pod::Spec.new do |s|
  s.name          = "FMFrameMaker"
  s.version       = "0.3"
  s.summary       = "An Objective-C library for simplifying, encapsulating, and optimizing view layout logic into a single block for each view."
  s.homepage      = "https://github.com/lavoy/FrameMaker"
  s.license       = { :type => "MIT", :file => 'LICENSE' }
  s.author        = { "Andy LaVoy" => "lavoy.andy@gmail.com" }
  s.source        = { :git => "https://github.com/lavoy/FrameMaker.git", :tag => "0.3" }
  s.platform      = :ios, '2.0'
  s.source_files  = 'FMFrameMaker/*.{h,m}'
  s.framework     = 'Foundation'
  s.requires_arc  = true
end