Pod::Spec.new do |s|
  s.name          = "FMFrameMaker"
  s.version       = "0.4"
  s.summary       = "An Objective-C library for simplifying, encapsulating, and optimizing view layout logic into a single block for each view."
  s.homepage      = "https://github.com/lavoy/FMFrameMaker"
  s.license       = { :type => "MIT", :file => 'LICENSE' }
  s.author        = { "Andy LaVoy" => "lavoy.andy@gmail.com" }
  s.source        = { :git => "https://github.com/lavoy/FMFrameMaker.git", :tag => "0.4" }
  s.platform      = :ios, '5.0'
  s.source_files  = 'FMFrameMaker/*.{h,m}'
  s.framework     = 'Foundation'
  s.requires_arc  = true
end
