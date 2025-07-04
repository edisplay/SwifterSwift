Pod::Spec.new do |s|
  s.name = 'SwifterSwift'
  s.version = '7.0.0'
  s.summary = 'A handy collection of more than 500 native Swift extensions to boost your productivity.'
  s.description = <<-DESC
  SwifterSwift is a collection of over 500 native Swift extensions, with handy methods, syntactic sugar, and performance improvements for wide range of primitive data types, UIKit and Cocoa classes –over 500 in 1– for iOS, macOS, tvOS and watchOS.
                   DESC

  s.homepage = 'https://github.com/SwifterSwift/SwifterSwift'
  s.license = { type: 'MIT', file: 'LICENSE' }
  s.authors = { 'Omar Albeik' => 'omaralbeik@gmail.com' }
  s.social_media_url = 'http://twitter.com/omaralbeik'
  s.screenshot = 'https://raw.githubusercontent.com/SwifterSwift/SwifterSwift/master/Assets/logo.png'
  s.documentation_url = 'http://swifterswift.com/docs'

  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '12.0'
  s.watchos.deployment_target = '4.0'

  s.swift_versions = ['6.0']
  s.requires_arc = true
  s.source = { git: 'https://github.com/SwifterSwift/SwifterSwift.git', tag: s.version.to_s }
  s.source_files = 'Sources/SwifterSwift/**/*.swift'

  # SwiftStdlib Extensions
  s.subspec 'SwiftStdlib' do |sp|
    sp.source_files = 'Sources/SwifterSwift/Shared/*.swift', 'Sources/SwifterSwift/SwiftStdlib/*.swift'
  end

  # Foundation Extensions
  s.subspec 'Foundation' do |sp|
    sp.source_files = 'Sources/SwifterSwift/Shared/*.swift', 'Sources/SwifterSwift/Foundation/*.swift'
    sp.resource_bundles = {
      'SwifterSwift_Privacy' => 'Sources/SwifterSwift/Resources/PrivacyInfo.xcprivacy'
    }
  end

  # UIKit Extensions
  s.subspec 'UIKit' do |sp|
    sp.source_files = 'Sources/SwifterSwift/Shared/*.swift', 'Sources/SwifterSwift/UIKit/*.swift'
  end

  # UIKit Without IBInspectable Extensions
  s.subspec 'UIKitNoIBInspectable' do |sp|
    sp.dependency 'SwifterSwift/UIKit'
    sp.exclude_files = 'Sources/SwifterSwift/UIKit/IBInspectable/*.swift'
  end

  # AppKit Extensions
  s.subspec 'AppKit' do |sp|
    sp.source_files = 'Sources/SwifterSwift/Shared/*.swift', 'Sources/SwifterSwift/AppKit/*.swift'
  end

  # AppKit Without IBInspectable Extensions
  s.subspec 'AppKitNoIBInspectable' do |sp|
    sp.dependency 'SwifterSwift/AppKit'
    sp.exclude_files = 'Sources/SwifterSwift/AppKit/IBInspectable/*.swift'
  end

  # SwifterSwift Without IBInspectable Extensions
  s.subspec 'NoIBInspectable' do |sp|
    sp.source_files = 'Sources/SwifterSwift/**/*.swift'
    sp.exclude_files = 'Sources/SwifterSwift/**/IBInspectable/*.swift'
  end

  # CoreGraphics Extensions
  s.subspec 'CoreGraphics' do |sp|
    sp.source_files = 'Sources/SwifterSwift/CoreGraphics/*.swift'
  end

  # CoreLocation Extensions
  s.subspec 'CoreLocation' do |sp|
    sp.source_files = 'Sources/SwifterSwift/CoreLocation/*.swift'
  end

  # CoreAnimation Extensions
  s.subspec 'CoreAnimation' do |sp|
    sp.source_files = 'Sources/SwifterSwift/Shared/*.swift', 'Sources/SwifterSwift/CoreAnimation/*.swift'
  end

  # CryptoKit Extensions
  s.subspec 'CryptoKit' do |sp|
    sp.source_files = 'Sources/SwifterSwift/Shared/*.swift', 'Sources/SwifterSwift/CryptoKit/*.swift'
  end

  # MapKit Extensions
  s.subspec 'MapKit' do |sp|
    sp.source_files = 'Sources/SwifterSwift/Shared/*.swift', 'Sources/SwifterSwift/MapKit/*.swift'
  end

  # SpriteKit Extensions
  s.subspec 'SpriteKit' do |sp|
    sp.source_files = 'Sources/SwifterSwift/SpriteKit/*.swift'
  end

  s.subspec 'SceneKit' do |sp|
    sp.source_files = 'Sources/SwifterSwift/Shared/*.swift', 'Sources/SwifterSwift/SceneKit/*.swift'
  end

  # StoreKit Extensions
  s.subspec 'StoreKit' do |sp|
    sp.source_files = 'Sources/SwifterSwift/StoreKit/*.swift'
  end

  # Dispatch Extensions
  s.subspec 'Dispatch' do |sp|
    sp.source_files = 'Sources/SwifterSwift/Dispatch/*.swift'
  end

  # WebKit Extensions
  s.subspec 'WebKit' do |sp|
    sp.source_files = 'Sources/SwifterSwift/WebKit/*.swift'
  end

  # HealthKit Extensions
  s.subspec 'HealthKit' do |sp|
    sp.source_files = 'Sources/SwifterSwift/HealthKit/*.swift'
  end

end
