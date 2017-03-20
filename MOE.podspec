#
# Be sure to run `pod lib lint MOE.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MOE'
  s.version          = '0.1.2'
  s.summary          = 'Native binding for MOE'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Native binding for MOE, hand crafted
                       DESC

  s.homepage         = 'https://github.com/tthufo/MOE'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tthufo' => 'tthufo@gmail.com' }
  s.source           = { :git => 'https://github.com/tthufo/MOE.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/tthufo'

  s.ios.deployment_target = '7.0'

s.source_files = 'MOE/Classes'

s.dependency 'FBSDKCoreKit', '~> 4.4'
s.dependency 'FBSDKLoginKit', '~> 4.4'
s.dependency 'FBSDKShareKit', '~> 4.4'
s.dependency 'IAPHelper', '~> 1.1'

s.requires_arc = true

#s.resource_bundles = {
#'MOE' => ['MOE/Assets/*']
#}

#s.resources = 'MOE/Assets/*'

s.public_header_files = 'MOE/Classes/*.h'


  # s.resource_bundles = {
  #   'MOE' => ['MOE/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
