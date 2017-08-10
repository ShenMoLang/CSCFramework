#
# Be sure to run `pod lib lint CSCFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'CSCFramework'
s.version          = '1.0.0'
s.summary          = 'CSCFramework'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description = <<-DESC
                    An optional longer description of BZLib

                    * Markdown format.
                    * Don't worry about the indent, we strip it!
                DESC

s.homepage         = 'https://github.com/ShenMoLang/CSCFramework'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = 'MIT'
s.author           = { 'ShenMoLang' => '810075973@qq.com' }
s.source           = { :git => 'https://github.com/ShenMoLang/CSCFramework.git', :tag => "v1.0.0" }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '8.0'
s.requires_arc = true

# 表示类库的源文件存放目录
s.source_files = 'CSCFramework/Classes/**/*'
# 三方Framework和Library
#  s.ios.vendored_frameworks = 'CSCFramework-0.0.1/ios/*.framework'
# 资源文件（.xib .storyboard ...）
#  s.resource = 'CSCFramework/Classes/sdk/INIT.pack'

# s.resource_bundles = {
#   'CSCFramework' => ['CSCFramework/Assets/*.png']
# }

s.public_header_files = 'CSCFramework/Classes/*.h'
s.frameworks = 'UIKit'
s.dependency 'AFNetworking'

end
