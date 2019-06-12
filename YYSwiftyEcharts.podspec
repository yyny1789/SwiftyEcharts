Pod::Spec.new do |s|
  s.name                = "YYSwiftyEcharts"
  s.version             = "0.0.3"
  s.summary             = "A custom component for the ecomfe's echarts 3."
  s.homepage            = "https://github.com/yyny1789/SwiftyEcharts.git"
  s.license             = { :type => "MIT", :file => 'LICENSE' }
  s.author              = { "YY" => "yyny@yyny.com" }
  #s.platform            = :ios, "8.0"
  s.source              = { :git => "https://github.com/yyny1789/SwiftyEcharts.git", :tag => s.version}
  s.source_files        = "YYSwiftyEcharts/**/*.{h,swift}" 
  s.resource_bundles    = { 'YYSwiftyEcharts' => 'SwiftyEcharts/Resources/**' }
  s.requires_arc        = true
  s.ios.frameworks          = 'UIKit'
  s.ios.deployment_target = '8.0'
end
