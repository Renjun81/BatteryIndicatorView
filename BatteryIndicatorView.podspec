#
# Be sure to run `pod lib lint BatteryIndicatorView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BatteryIndicatorView'
  s.version          = '0.1.0'
  s.summary          = 'Classic Battery indicator view'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
classic battery indicator view class written with obj-c
                       DESC

  s.homepage         = 'https://github.com/renjun81/BatteryIndicatorView'
  s.screenshots      = 'http://raw.githubusercontent.com/renjun81/BatteryIndicatorView/master/screenshot/view.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'renjun81' => 'renjun81@yeah.net' }
  s.source           = { :git => 'https://github.com/renjun81/BatteryIndicatorView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'BatteryIndicatorView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BatteryIndicatorView' => ['BatteryIndicatorView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
