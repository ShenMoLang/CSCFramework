Pod::Spec.new do |s|
  s.name = "CSCFramework"
  s.version = "1.0.0"
  s.summary = "CSCFramework"
  s.license = "MIT"
  s.authors = {"ShenMoLang"=>"810075973@qq.com"}
  s.homepage = "https://github.com/ShenMoLang/CSCFramework"
  s.description = "An optional longer description of BZLib\n\n* Markdown format.\n* Don't worry about the indent, we strip it!"
  s.frameworks = "UIKit"
  s.requires_arc = true
  s.source = { :path => '.' }
  s.frameworks = 'SystemConfiguration', 'CoreGraphics', 'UIKit', 'Foundation', 'MobileCoreServices', 'Security'
  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/CSCFramework.framework'
end

   