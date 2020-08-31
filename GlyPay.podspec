require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'GlyPay'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target  = '11.0'
  s.dependency 'Capacitor'
  s.swift_version = '5.1'


  s.frameworks='SystemConfiguration','CoreTelephony','QuartzCore','CoreText','CoreGraphics','UIKit','Foundation','CFNetwork','CoreMotion'
  s.vendored_frameworks = 'ios/Plugin/lib/AlipaySDK.framework'
  #s.header_dir = "ios/Plugin/lib/AlipaySDK.framework/Headers"
  s.libraries  = 'c++','z'

  #s.public_header_files         = 'os/Plugin/lib/AlipaySDK.framework/Headers/*.h'
  #s.resources                   = 'os/Plugin/lib/AlipaySDK.bundle/*'

end
